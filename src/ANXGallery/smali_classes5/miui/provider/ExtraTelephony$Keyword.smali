.class public final Lmiui/provider/ExtraTelephony$Keyword;
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
    name = "Keyword"
.end annotation


# static fields
.field public static final CLOUD_UID:Ljava/lang/String; = "cloudUid"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/antispam-keyword"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/antispam-keyword"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_CLOUDS_BLACK:I = 0x2

.field public static final TYPE_CLOUDS_WHITE:I = 0x3

.field public static final TYPE_LOCAL_BLACK:I = 0x1

.field public static final TYPE_LOCAL_WHITE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2216
    const-string v0, "content://antispam/keyword"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
