.class public interface abstract Lmiui/yellowpage/YellowPageContract$ImageLookup;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLookup"
.end annotation


# static fields
.field public static final CONTENT_URI_AVATAR_URL:Landroid/net/Uri;

.field public static final CONTENT_URI_IMAGE:Landroid/net/Uri;

.field public static final CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

.field public static final CONTENT_URI_IMAGE_PHONE_AD:Landroid/net/Uri;

.field public static final CONTENT_URI_IMAGE_URL:Landroid/net/Uri;

.field public static final DIRECTORY_AVATAR_URL:Ljava/lang/String; = "image_avatar"

.field public static final DIRECTORY_IMAGE:Ljava/lang/String; = "image"

.field public static final DIRECTORY_IMAGE_CLOUD:Ljava/lang/String; = "image_cloud"

.field public static final DIRECTORY_IMAGE_PHONE_AD:Ljava/lang/String; = "phone_ad_url"

.field public static final DIRECTORY_IMAGE_URL:Ljava/lang/String; = "image_url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    const-string v0, "content://miui.yellowpage/image"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    .line 137
    const-string v0, "content://miui.yellowpage/image_cloud"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    .line 138
    const-string v0, "content://miui.yellowpage/image_avatar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_AVATAR_URL:Landroid/net/Uri;

    .line 139
    const-string v0, "content://miui.yellowpage/image_url"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_URL:Landroid/net/Uri;

    .line 140
    const-string v0, "content://miui.yellowpage/phone_ad_url"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_PHONE_AD:Landroid/net/Uri;

    return-void
.end method
