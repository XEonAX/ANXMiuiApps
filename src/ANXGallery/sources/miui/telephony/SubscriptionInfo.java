package miui.telephony;

public abstract class SubscriptionInfo {
    public abstract CharSequence getDisplayName();

    public abstract String getDisplayNumber();

    public abstract String getIccId();

    public abstract int getPhoneId();

    public abstract int getSlotId();

    public abstract int getSubscriptionId();

    public abstract boolean isActivated();

    public int getMcc() {
        return 0;
    }

    public int getMnc() {
        return 0;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("{id=");
        stringBuilder.append(getSubscriptionId());
        stringBuilder.append(", iccId=");
        stringBuilder.append(PhoneDebug.VDBG ? getIccId() : TelephonyUtils.pii(getIccId()));
        stringBuilder.append(", slotId=");
        stringBuilder.append(getSlotId());
        stringBuilder.append(", displayName=");
        stringBuilder.append(getDisplayName());
        stringBuilder.append(", displayNumber=");
        stringBuilder.append(TelephonyUtils.pii(getDisplayNumber()));
        stringBuilder.append(", isActivated=");
        stringBuilder.append(isActivated());
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
