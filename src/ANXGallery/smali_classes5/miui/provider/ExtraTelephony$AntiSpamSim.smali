.class public final Lmiui/provider/ExtraTelephony$AntiSpamSim;
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
    name = "AntiSpamSim"
.end annotation


# static fields
.field public static final BACKSOUND_MODE:Ljava/lang/String; = "backsound_mode"

.field public static final CALL_WAIT:Ljava/lang/String; = "call_wait"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/antispam-sim"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/antispam-sim"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final STATE:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2261
    const-string v0, "content://antispam/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$AntiSpamSim;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
