.class public Lmiui/yellowpage/HostManager;
.super Ljava/lang/Object;
.source "HostManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final BASE_URL:Ljava/lang/String;

.field private static final DIRECTORY_IMAGE_JPG:Ljava/lang/String; = "/thumbnail/jpeg/w%dh%d/"

.field private static final DIRECTORY_IMAGE_PHOTO:Ljava/lang/String; = "/thumbnail/jpeg/h%d/"

.field private static final DIRECTORY_IMAGE_PNG:Ljava/lang/String; = "/thumbnail/png/w%d/"

.field private static final DIRECTORY_IMAGE_THUMBNAIL:Ljava/lang/String; = "/thumbnail/jpeg/w100/"

.field private static final FORMAL_BASE_URL:Ljava/lang/String; = "https://api.huangye.miui.com"

.field private static final GLOBAL_BASE_URL:Ljava/lang/String; = "https://global.api.huangye.miui.com"

.field protected static final URL_DEFAULT_IMAGE_BASE:Ljava/lang/String; = "http://file.market.xiaomi.com"

.field protected static final URL_SPBOOK_BASE:Ljava/lang/String;

.field protected static final URL_YELLOW_PAGE_BASE:Ljava/lang/String;

.field private static sDisplayHeight:I

.field private static sImageDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "https://global.api.huangye.miui.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://api.huangye.miui.com"

    :goto_0
    sput-object v0, Lmiui/yellowpage/HostManager;->BASE_URL:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/yellowpage/HostManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/spbook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/HostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/yellowpage/HostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/yellowpage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/HostManager;->URL_YELLOW_PAGE_BASE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lmiui/yellowpage/HostManager;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultImageBase()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "http://file.market.xiaomi.com"

    return-object v0
.end method

.method private static getImageDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    sget-object v0, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    return-object v0

    .line 57
    :cond_0
    const-string v0, "http://file.market.xiaomi.com"

    sput-object v0, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 59
    const-string v0, "image_domain"

    invoke-static {p0, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "domain"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    sput-object v0, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 64
    sget-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    .line 70
    :cond_1
    sget-object v1, Lmiui/yellowpage/HostManager;->sImageDomain:Ljava/lang/String;

    return-object v1
.end method

.method public static getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 49
    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getImageDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lmiui/yellowpage/HostManager;->getImageUrl(Ljava/lang/String;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImageUrl(Ljava/lang/String;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .locals 5
    .param p0, "imageDomain"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->PNG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    if-ne p4, v1, :cond_1

    .line 89
    const-string v1, "/thumbnail/png/w%d/"

    goto :goto_0

    :cond_1
    const-string v1, "/thumbnail/jpeg/w%dh%d/"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 88
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    sget v0, Lmiui/yellowpage/HostManager;->sDisplayHeight:I

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 96
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lmiui/yellowpage/HostManager;->sDisplayHeight:I

    .line 99
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    sget v0, Lmiui/yellowpage/HostManager;->sDisplayHeight:I

    return v0
.end method

.method public static getSpbookBaseUrl()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lmiui/yellowpage/HostManager;->URL_SPBOOK_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getYellowPageBaseUrl()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lmiui/yellowpage/HostManager;->URL_YELLOW_PAGE_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getYellowPagePhotoUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getImageDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/thumbnail/jpeg/h%d/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0
.end method

.method public static getYellowPageThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/yellowpage/HostManager;->getImageDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/thumbnail/jpeg/w100/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
