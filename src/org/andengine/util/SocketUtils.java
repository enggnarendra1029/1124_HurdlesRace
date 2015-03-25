// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.ServerSocket;
import java.net.Socket;
import org.andengine.util.debug.Debug;

public final class SocketUtils
{

    public SocketUtils()
    {
    }

    public static final void closeSocket(DatagramSocket datagramsocket)
    {
        if (datagramsocket != null && !datagramsocket.isClosed())
        {
            datagramsocket.close();
        }
    }

    public static final void closeSocket(ServerSocket serversocket)
    {
        if (serversocket == null || serversocket.isClosed())
        {
            break MISSING_BLOCK_LABEL_15;
        }
        serversocket.close();
        return;
        IOException ioexception;
        ioexception;
        Debug.e(ioexception);
        return;
    }

    public static final void closeSocket(Socket socket)
    {
        if (socket == null || socket.isClosed())
        {
            break MISSING_BLOCK_LABEL_15;
        }
        socket.close();
        return;
        IOException ioexception;
        ioexception;
        Debug.e(ioexception);
        return;
    }
}
