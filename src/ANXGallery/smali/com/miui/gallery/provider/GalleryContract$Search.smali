.class public interface abstract Lcom/miui/gallery/provider/GalleryContract$Search;
.super Ljava/lang/Object;
.source "GalleryContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Search"
.end annotation


# static fields
.field public static final URI_LIKELY_RESULT_PAGE:Landroid/net/Uri;

.field public static final URI_LOCATION_LIST_PAGE:Landroid/net/Uri;

.field public static final URI_RESULT_PAGE:Landroid/net/Uri;

.field public static final URI_SEARCH_PAGE:Landroid/net/Uri;

.field public static final URI_TAG_LIST_PAGE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1190
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 1191
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_SEARCH_PAGE:Landroid/net/Uri;

    .line 1198
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 1199
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_RESULT_PAGE:Landroid/net/Uri;

    .line 1202
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 1203
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tags"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_TAG_LIST_PAGE:Landroid/net/Uri;

    .line 1205
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 1206
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "locations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_LOCATION_LIST_PAGE:Landroid/net/Uri;

    .line 1210
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract;->HTTPS_AUTHORITY_URI:Landroid/net/Uri;

    .line 1211
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "likelyResults"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inFeedbackTaskMode"

    const/4 v2, 0x1

    .line 1213
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/provider/GalleryContract$Search;->URI_LIKELY_RESULT_PAGE:Landroid/net/Uri;

    .line 1210
    return-void
.end method
