.class Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 961
    new-instance v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;-><init>(Lmiui/telephony/PhoneNumberUtils$1;)V

    sput-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->INSTANCE:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;
    .locals 1

    .line 960
    sget-object v0, Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler$SingletonHolder;->INSTANCE:Lmiui/telephony/PhoneNumberUtils$TelocationAsyncQueryHandler;

    return-object v0
.end method
