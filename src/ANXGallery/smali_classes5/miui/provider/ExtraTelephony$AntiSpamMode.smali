.class public final Lmiui/provider/ExtraTelephony$AntiSpamMode;
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
    name = "AntiSpamMode"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/antispam-mode"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/antispam-mode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final STATE:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2248
    const-string v0, "content://antispam/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$AntiSpamMode;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
