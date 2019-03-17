.class public Lcom/miui/gallery/lib/MiuiGalleryUtils;
.super Ljava/lang/Object;
.source "MiuiGalleryUtils.java"


# static fields
.field private static final ALBUM_SHARE_BARCODE_URLS:[Ljava/lang/String;

.field private static final ALBUM_SHARE_BARCODE_URL_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

.field private static final ALBUM_SHARE_INVITATION_URL_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://mij.cc/[a-z]+/[a-zA-Z0-9\\-_]{16}#a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://mi1.cc/[a-zA-Z0-9\\-_]{16}#a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URLS:[Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_PATTERNS:Ljava/util/ArrayList;

    .line 156
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    .line 157
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_PATTERNS:Ljava/util/ArrayList;

    .line 158
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    .line 161
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_PATTERNS:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->initPatterns([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 162
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URLS:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_PATTERNS:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->initPatterns([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 163
    return-void
.end method

.method private static hasMatch(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "patterns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    const/4 v1, 0x0

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 298
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static initPatterns([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "patterns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    .local p2, "strictPatterns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    const/4 v2, 0x0

    .line 166
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 167
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v4, "^%s$"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "p":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isAlbumShareBarcodeUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->hasMatch(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAlbumShareInvitationUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 276
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->hasMatch(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAlbumShareUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareInvitationUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareBarcodeUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
