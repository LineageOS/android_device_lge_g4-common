/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdlib.h>

#ifdef LIBLGE_64BIT
extern "C" int _ZNK7android6Parcel10readUint64EPm(uint32_t *pArg);

extern "C" int _ZNK7android6Parcel10readuInt64EPm(uint32_t *pArg) {
    return _ZNK7android6Parcel10readUint64EPm(pArg);
}

extern "C" void RIL_onRequestAck(RIL_Token t) {
    RequestInfo *pRI;
    int ret, fd;

    size_t errorOffset;
    RIL_SOCKET_ID socket_id = RIL_SOCKET_1;

    pRI = (RequestInfo *)t;

    if (!checkAndDequeueRequestInfoIfAck(pRI, true)) {
        RLOGE ("RIL_onRequestAck: invalid RIL_Token");
        return;
    }

    socket_id = pRI->socket_id;
    fd = findFd(socket_id);

#if VDBG
    RLOGD("Request Ack, %s", rilSocketIdToString(socket_id));
#endif

    appendPrintBuf("Ack [%04d]< %s", pRI->token, requestToString(pRI->pCI->requestNumber));

    if (pRI->cancelled == 0) {
        Parcel p;

        p.writeInt32 (RESPONSE_SOLICITED_ACK);
        p.writeInt32 (pRI->token);

        if (fd < 0) {
            RLOGD ("RIL onRequestComplete: Command channel closed");
        }

        sendResponse(p, socket_id);
    }
}

#endif

