/*
 * Copyright (c) 2014 The CyanogenMod Project
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 * Also add information on how to contact you by electronic and paper mail.
 *
 */

package org.cyanogenmod.quickcircle;

import android.app.INotificationManager;
import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

import java.util.List;
import java.util.Vector;

public class QuickCircleStatus {

    private static final String TAG = "QuickCircle";

    private boolean mRunning = true;
    private boolean mPocketed = false;
    private boolean mResetTimer = false;

    private boolean mStayOnTop = false;

    synchronized boolean isRunning() {
        return mRunning;
    }

    synchronized void startRunning() {
        mRunning = true;
    }

    synchronized void stopRunning() {
        mRunning = false;
    }

    synchronized boolean isPocketed() {
        return mPocketed;
    }

    synchronized void setPocketed(boolean val) {
        mPocketed = val;
    }

    synchronized void resetTimer() {
        mResetTimer = true;
    }

    synchronized boolean isResetTimer() {
        boolean ret = mResetTimer;
        mResetTimer = false;
        return ret;
    }

    synchronized boolean isOnTop() {
        return mStayOnTop;
    }

    synchronized void setOnTop(boolean val) {
        mStayOnTop = val;
    }
}
