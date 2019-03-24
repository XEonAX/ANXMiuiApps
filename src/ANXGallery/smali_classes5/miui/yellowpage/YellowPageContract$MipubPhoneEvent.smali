.class public interface abstract Lmiui/yellowpage/YellowPageContract$MipubPhoneEvent;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MipubPhoneEvent"
.end annotation


# static fields
.field public static final CONTENT_URI_MIPUB_PHONE_EVENT:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "phone_event"

.field public static final EXTRA_DATA_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_DATA_DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXTRA_DATA_NUMBER:Ljava/lang/String; = "number"

.field public static final URI_PARAM_END_TIME:Ljava/lang/String; = "extra_end_time"

.field public static final URI_PARAM_EXTRA_DATA:Ljava/lang/String; = "extra_data"

.field public static final URI_PARAM_SOURCE:Ljava/lang/String; = "extra_source"

.field public static final URI_PARAM_START_TIME:Ljava/lang/String; = "extra_start_time"

.field public static final URI_PARAM_TYPE:Ljava/lang/String; = "extra_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    const-string v0, "content://miui.yellowpage/phone_event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$MipubPhoneEvent;->CONTENT_URI_MIPUB_PHONE_EVENT:Landroid/net/Uri;

    return-void
.end method
