package com.xiaomi.xmpush.thrift;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

public enum ActionType {
    Registration(1),
    UnRegistration(2),
    Subscription(3),
    UnSubscription(4),
    SendMessage(5),
    AckMessage(6),
    SetConfig(7),
    ReportFeedback(8),
    Notification(9),
    Command(10),
    MultiConnectionBroadcast(11),
    MultiConnectionResult(12),
    ConnectionKick(13),
    ApnsMessage(14),
    IOSDeviceTokenWrite(15),
    SaveInvalidRegId(16),
    ApnsCertChanged(17),
    RegisterDevice(18),
    ExpandTopicInXmq(19),
    SendMessageNew(22),
    ExpandTopicInXmqNew(23),
    DeleteInvalidMessage(24),
    BadAction(99),
    Presence(100),
    FetchOfflineMessage(BaiduSceneResult.SHOOTING),
    SaveJob(BaiduSceneResult.TAEKWONDO),
    Broadcast(BaiduSceneResult.MOUNTAINEERING),
    BatchPresence(BaiduSceneResult.SPORTS_OTHER),
    BatchMessage(BaiduSceneResult.TEMPLE),
    StatCounter(BaiduSceneResult.GARDEN),
    FetchTopicMessage(BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE),
    DeleteAliasCache(BaiduSceneResult.CHURCH),
    UpdateRegistration(BaiduSceneResult.CASTLE),
    BatchMessageNew(BaiduSceneResult.STREET_VIEW),
    PublicWelfareMessage(BaiduSceneResult.FOUNTAIN),
    RevokeMessage(BaiduSceneResult.BRIDGE),
    SimulatorJob(200);
    
    private final int value;

    private ActionType(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static ActionType findByValue(int value) {
        switch (value) {
            case 1:
                return Registration;
            case 2:
                return UnRegistration;
            case 3:
                return Subscription;
            case 4:
                return UnSubscription;
            case 5:
                return SendMessage;
            case 6:
                return AckMessage;
            case 7:
                return SetConfig;
            case 8:
                return ReportFeedback;
            case 9:
                return Notification;
            case 10:
                return Command;
            case 11:
                return MultiConnectionBroadcast;
            case 12:
                return MultiConnectionResult;
            case 13:
                return ConnectionKick;
            case 14:
                return ApnsMessage;
            case 15:
                return IOSDeviceTokenWrite;
            case 16:
                return SaveInvalidRegId;
            case 17:
                return ApnsCertChanged;
            case 18:
                return RegisterDevice;
            case 19:
                return ExpandTopicInXmq;
            case 22:
                return SendMessageNew;
            case 23:
                return ExpandTopicInXmqNew;
            case 24:
                return DeleteInvalidMessage;
            case BaiduSceneResult.VOLLEYBALL /*99*/:
                return BadAction;
            case 100:
                return Presence;
            case BaiduSceneResult.SHOOTING /*101*/:
                return FetchOfflineMessage;
            case BaiduSceneResult.TAEKWONDO /*102*/:
                return SaveJob;
            case BaiduSceneResult.MOUNTAINEERING /*103*/:
                return Broadcast;
            case BaiduSceneResult.SPORTS_OTHER /*104*/:
                return BatchPresence;
            case BaiduSceneResult.TEMPLE /*105*/:
                return BatchMessage;
            case BaiduSceneResult.GARDEN /*107*/:
                return StatCounter;
            case BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE /*108*/:
                return FetchTopicMessage;
            case BaiduSceneResult.CHURCH /*109*/:
                return DeleteAliasCache;
            case BaiduSceneResult.CASTLE /*110*/:
                return UpdateRegistration;
            case BaiduSceneResult.STREET_VIEW /*112*/:
                return BatchMessageNew;
            case BaiduSceneResult.FOUNTAIN /*113*/:
                return PublicWelfareMessage;
            case BaiduSceneResult.BRIDGE /*114*/:
                return RevokeMessage;
            case 200:
                return SimulatorJob;
            default:
                return null;
        }
    }
}
