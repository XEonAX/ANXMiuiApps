.class public final Lmiui/provider/ExtraTelephony$FirewallLog;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirewallLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$FirewallLog$CallBlockType;,
        Lmiui/provider/ExtraTelephony$FirewallLog$SmsBlockType;
    }
.end annotation


# static fields
.field public static final CALL_TYPE:Ljava/lang/String; = "callType"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/antispam-log"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/antispam-log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

.field public static final CONTENT_URI_SMS_LOG:Landroid/net/Uri;

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CALL:I = 0x1

.field public static final TYPE_SMS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2277
    const-string v0, "content://antispam/log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 2278
    const-string v0, "content://antispam/logconversation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_LOG_CONVERSATION:Landroid/net/Uri;

    .line 2279
    const-string v0, "content://antispam/log_sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI_SMS_LOG:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
