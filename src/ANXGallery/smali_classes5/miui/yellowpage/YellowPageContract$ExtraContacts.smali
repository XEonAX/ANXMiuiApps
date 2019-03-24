.class public interface abstract Lmiui/yellowpage/YellowPageContract$ExtraContacts;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtraContacts"
.end annotation


# static fields
.field public static final CLOUD_ANTISPAM_TYPE:Ljava/lang/String; = "cloud_antispam_type"

.field public static final CLOUD_ANTISPAM_TYPE_TAG:Ljava/lang/String; = "cloud_antispam_type_tag"

.field public static final CONTENT_URI_REBUILD_T9:Landroid/net/Uri;

.field public static final NUMBER_TYPE:Ljava/lang/String; = "number_type"

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_YELLOWPAGE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 579
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "build_yellowpage_t9_index"

    .line 580
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$ExtraContacts;->CONTENT_URI_REBUILD_T9:Landroid/net/Uri;

    .line 579
    return-void
.end method
