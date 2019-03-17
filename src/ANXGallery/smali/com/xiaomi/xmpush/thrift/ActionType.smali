.class public final enum Lcom/xiaomi/xmpush/thrift/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum ApnsCertChanged:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum ApnsMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum BadAction:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum BatchMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum BatchMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum BatchPresence:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum Broadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum Command:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum ConnectionKick:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum DeleteAliasCache:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum DeleteInvalidMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum ExpandTopicInXmq:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum ExpandTopicInXmqNew:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum FetchOfflineMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum FetchTopicMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum IOSDeviceTokenWrite:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum MultiConnectionBroadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum MultiConnectionResult:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum Presence:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum PublicWelfareMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum RegisterDevice:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum ReportFeedback:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum RevokeMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum SaveInvalidRegId:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum SaveJob:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum SendMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum SetConfig:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum SimulatorJob:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum StatCounter:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum Subscription:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum UnSubscription:Lcom/xiaomi/xmpush/thrift/ActionType;

.field public static final enum UpdateRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Registration"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 18
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "UnRegistration"

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 19
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Subscription"

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Subscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 20
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "UnSubscription"

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->UnSubscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 21
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SendMessage"

    invoke-direct {v0, v1, v7, v8}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 22
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "AckMessage"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 23
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SetConfig"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SetConfig:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 24
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ReportFeedback"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ReportFeedback:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 25
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Notification"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 26
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Command"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Command:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 27
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "MultiConnectionBroadcast"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->MultiConnectionBroadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 28
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "MultiConnectionResult"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->MultiConnectionResult:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 29
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ConnectionKick"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ConnectionKick:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 30
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ApnsMessage"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ApnsMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 31
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "IOSDeviceTokenWrite"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->IOSDeviceTokenWrite:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 32
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SaveInvalidRegId"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SaveInvalidRegId:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 33
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ApnsCertChanged"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ApnsCertChanged:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 34
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "RegisterDevice"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->RegisterDevice:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 35
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ExpandTopicInXmq"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ExpandTopicInXmq:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 36
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SendMessageNew"

    const/16 v2, 0x13

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 37
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "ExpandTopicInXmqNew"

    const/16 v2, 0x14

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ExpandTopicInXmqNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 38
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "DeleteInvalidMessage"

    const/16 v2, 0x15

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->DeleteInvalidMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 39
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "BadAction"

    const/16 v2, 0x16

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BadAction:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 40
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Presence"

    const/16 v2, 0x17

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Presence:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 41
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "FetchOfflineMessage"

    const/16 v2, 0x18

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->FetchOfflineMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 42
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SaveJob"

    const/16 v2, 0x19

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SaveJob:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 43
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "Broadcast"

    const/16 v2, 0x1a

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Broadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 44
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "BatchPresence"

    const/16 v2, 0x1b

    const/16 v3, 0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchPresence:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 45
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "BatchMessage"

    const/16 v2, 0x1c

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 46
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "StatCounter"

    const/16 v2, 0x1d

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->StatCounter:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 47
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "FetchTopicMessage"

    const/16 v2, 0x1e

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->FetchTopicMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 48
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "DeleteAliasCache"

    const/16 v2, 0x1f

    const/16 v3, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->DeleteAliasCache:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 49
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "UpdateRegistration"

    const/16 v2, 0x20

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->UpdateRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 50
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "BatchMessageNew"

    const/16 v2, 0x21

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 51
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "PublicWelfareMessage"

    const/16 v2, 0x22

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->PublicWelfareMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 52
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "RevokeMessage"

    const/16 v2, 0x23

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->RevokeMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 53
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    const-string v1, "SimulatorJob"

    const/16 v2, 0x24

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SimulatorJob:Lcom/xiaomi/xmpush/thrift/ActionType;

    .line 16
    const/16 v0, 0x25

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/ActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->Subscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->UnSubscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/ActionType;->AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->SetConfig:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->ReportFeedback:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Command:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->MultiConnectionBroadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->MultiConnectionResult:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->ConnectionKick:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->ApnsMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->IOSDeviceTokenWrite:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->SaveInvalidRegId:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->ApnsCertChanged:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->RegisterDevice:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->ExpandTopicInXmq:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->ExpandTopicInXmqNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->DeleteInvalidMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->BadAction:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Presence:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->FetchOfflineMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->SaveJob:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->Broadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchPresence:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->StatCounter:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->FetchTopicMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->DeleteAliasCache:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->UpdateRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->PublicWelfareMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->RevokeMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/xiaomi/xmpush/thrift/ActionType;->SimulatorJob:Lcom/xiaomi/xmpush/thrift/ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/xiaomi/xmpush/thrift/ActionType;->value:I

    .line 59
    return-void
.end method

.method public static findByValue(I)Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 73
    sparse-switch p0, :sswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :sswitch_0
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Registration:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 77
    :sswitch_1
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->UnRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 79
    :sswitch_2
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Subscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 81
    :sswitch_3
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->UnSubscription:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 83
    :sswitch_4
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 85
    :sswitch_5
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->AckMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 87
    :sswitch_6
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SetConfig:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 89
    :sswitch_7
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ReportFeedback:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 91
    :sswitch_8
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 93
    :sswitch_9
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Command:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 95
    :sswitch_a
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->MultiConnectionBroadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 97
    :sswitch_b
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->MultiConnectionResult:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 99
    :sswitch_c
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ConnectionKick:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 101
    :sswitch_d
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ApnsMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 103
    :sswitch_e
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->IOSDeviceTokenWrite:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 105
    :sswitch_f
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SaveInvalidRegId:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 107
    :sswitch_10
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ApnsCertChanged:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 109
    :sswitch_11
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->RegisterDevice:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 111
    :sswitch_12
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ExpandTopicInXmq:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 113
    :sswitch_13
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SendMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 115
    :sswitch_14
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->ExpandTopicInXmqNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 117
    :sswitch_15
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->DeleteInvalidMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 119
    :sswitch_16
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BadAction:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 121
    :sswitch_17
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Presence:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 123
    :sswitch_18
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->FetchOfflineMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 125
    :sswitch_19
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SaveJob:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 127
    :sswitch_1a
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->Broadcast:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 129
    :sswitch_1b
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchPresence:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 131
    :sswitch_1c
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 133
    :sswitch_1d
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->StatCounter:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 135
    :sswitch_1e
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->FetchTopicMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 137
    :sswitch_1f
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->DeleteAliasCache:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 139
    :sswitch_20
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->UpdateRegistration:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 141
    :sswitch_21
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->BatchMessageNew:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 143
    :sswitch_22
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->PublicWelfareMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 145
    :sswitch_23
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->RevokeMessage:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 147
    :sswitch_24
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->SimulatorJob:Lcom/xiaomi/xmpush/thrift/ActionType;

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x63 -> :sswitch_16
        0x64 -> :sswitch_17
        0x65 -> :sswitch_18
        0x66 -> :sswitch_19
        0x67 -> :sswitch_1a
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1c
        0x6b -> :sswitch_1d
        0x6c -> :sswitch_1e
        0x6d -> :sswitch_1f
        0x6e -> :sswitch_20
        0x70 -> :sswitch_21
        0x71 -> :sswitch_22
        0x72 -> :sswitch_23
        0xc8 -> :sswitch_24
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ActionType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/ActionType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->$VALUES:[Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/ActionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/xiaomi/xmpush/thrift/ActionType;->value:I

    return v0
.end method
