// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.exception;


// Referenced classes of package org.andengine.util.exception:
//            AndEngineException

public class DeviceNotSupportedException extends AndEngineException
{
    public static final class DeviceNotSupportedCause extends Enum
    {

        public static final DeviceNotSupportedCause CODEPATH_INCOMPLETE;
        public static final DeviceNotSupportedCause EGLCONFIG_NOT_FOUND;
        private static final DeviceNotSupportedCause ENUM$VALUES[];

        public static DeviceNotSupportedCause valueOf(String s)
        {
            return (DeviceNotSupportedCause)Enum.valueOf(org/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause, s);
        }

        public static DeviceNotSupportedCause[] values()
        {
            DeviceNotSupportedCause adevicenotsupportedcause[] = ENUM$VALUES;
            int i = adevicenotsupportedcause.length;
            DeviceNotSupportedCause adevicenotsupportedcause1[] = new DeviceNotSupportedCause[i];
            System.arraycopy(adevicenotsupportedcause, 0, adevicenotsupportedcause1, 0, i);
            return adevicenotsupportedcause1;
        }

        static 
        {
            CODEPATH_INCOMPLETE = new DeviceNotSupportedCause("CODEPATH_INCOMPLETE", 0);
            EGLCONFIG_NOT_FOUND = new DeviceNotSupportedCause("EGLCONFIG_NOT_FOUND", 1);
            DeviceNotSupportedCause adevicenotsupportedcause[] = new DeviceNotSupportedCause[2];
            adevicenotsupportedcause[0] = CODEPATH_INCOMPLETE;
            adevicenotsupportedcause[1] = EGLCONFIG_NOT_FOUND;
            ENUM$VALUES = adevicenotsupportedcause;
        }

        private DeviceNotSupportedCause(String s, int i)
        {
            super(s, i);
        }
    }


    private static final long serialVersionUID = 0x24a5061ff383296cL;
    private final DeviceNotSupportedCause mDeviceNotSupportedCause;

    public DeviceNotSupportedException(DeviceNotSupportedCause devicenotsupportedcause)
    {
        mDeviceNotSupportedCause = devicenotsupportedcause;
    }

    public DeviceNotSupportedException(DeviceNotSupportedCause devicenotsupportedcause, Throwable throwable)
    {
        super(throwable);
        mDeviceNotSupportedCause = devicenotsupportedcause;
    }

    public DeviceNotSupportedCause getDeviceNotSupportedCause()
    {
        return mDeviceNotSupportedCause;
    }
}
