.class public final Lmiui/provider/ExtraTelephony$Judge;
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
    name = "Judge"
.end annotation


# static fields
.field public static final CALL_CONTENT_URI:Landroid/net/Uri;

.field public static final CALL_TRANSFER_CONTENT_URI:Landroid/net/Uri;

.field public static final FORWARD_CALL_ALLOW:I = 0x0

.field public static final FORWARD_CALL_INTERCEPT:I = 0x1

.field public static final IS_FORWARD_CALL:Ljava/lang/String; = "is_forward_call"

.field public static final IS_REPEATED_BLOCKED_CALL:Ljava/lang/String; = "is_repeated_blocked_call"

.field public static final IS_REPEATED_NORMAL_CALL:Ljava/lang/String; = "is_repeated_normal_call"

.field public static final SERVICE_NUM_CONTENT_URI:Landroid/net/Uri;

.field public static final SMS_CONTENT_URI:Landroid/net/Uri;

.field public static final URL_CONTENT_URI:Landroid/net/Uri;

.field public static final URL_SCAN_RESULT_DANGEROUS:I = 0x2

.field public static final URL_SCAN_RESULT_NORMAL:I = 0x0

.field public static final URL_SCAN_RESULT_RISKY:I = 0x1

.field public static final URL_SCAN_RESULT_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2365
    const-string v0, "content://antispam/sms_judge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Judge;->SMS_CONTENT_URI:Landroid/net/Uri;

    .line 2366
    const-string v0, "content://antispam/call_judge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Judge;->CALL_CONTENT_URI:Landroid/net/Uri;

    .line 2367
    const-string v0, "content://antispam/url_judge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Judge;->URL_CONTENT_URI:Landroid/net/Uri;

    .line 2368
    const-string v0, "content://antispam/service_num_judge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Judge;->SERVICE_NUM_CONTENT_URI:Landroid/net/Uri;

    .line 2369
    const-string v0, "content://antispam/call_transfer_intercept_judge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Judge;->CALL_TRANSFER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
