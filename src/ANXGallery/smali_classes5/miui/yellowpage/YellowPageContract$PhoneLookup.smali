.class public interface abstract Lmiui/yellowpage/YellowPageContract$PhoneLookup;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneLookup"
.end annotation


# static fields
.field public static final ATD_COUNT:Ljava/lang/String; = "atd_count"

.field public static final ATD_ID:Ljava/lang/String; = "atd_category_id"

.field public static final ATD_PROVIDER:Ljava/lang/String; = "atd_provider"

.field public static final CALL_MENU:Ljava/lang/String; = "call_menu"

.field public static final CONTENT_FRAUD_VERIFY:Landroid/net/Uri;

.field public static final CONTENT_NORMALIZED_NUMBER:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_CLOUD:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "phone_lookup"

.field public static final DIRECTORY_CLOUD:Ljava/lang/String; = "phone_lookup_cloud"

.field public static final DIRECTORY_FRAUD_VERIFY:Ljava/lang/String; = "phone_lookup_fraud_verify"

.field public static final DIRECTORY_NORMALIZED_NUMBER:Ljava/lang/String; = "phone_lookup_normalized_number"

.field public static final FLAG:Ljava/lang/String; = "flag"

.field public static final HIDE:Ljava/lang/String; = "hide"

.field public static final MIN_MATCH:Ljava/lang/String; = "min_match"

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHOTO_URL:Ljava/lang/String; = "photo_url"

.field public static final PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final SLOGAN:Ljava/lang/String; = "slogan"

.field public static final SUSPECT:Ljava/lang/String; = "suspect"

.field public static final T9_RANK:Ljava/lang/String; = "t9_rank"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TAG_PINYIN:Ljava/lang/String; = "tag_pinyin"

.field public static final THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field public static final YELLOW_PAGE_NAME:Ljava/lang/String; = "yellow_page_name"

.field public static final YELLOW_PAGE_NAME_PINYIN:Ljava/lang/String; = "yellow_page_name_pinyin"

.field public static final YID:Ljava/lang/String; = "yid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    const-string v0, "content://miui.yellowpage/phone_lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    .line 177
    const-string v0, "content://miui.yellowpage/phone_lookup_cloud"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    .line 181
    const-string v0, "content://miui.yellowpage/phone_lookup_fraud_verify"

    .line 182
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_FRAUD_VERIFY:Landroid/net/Uri;

    .line 186
    const-string v0, "content://miui.yellowpage/phone_lookup_normalized_number"

    .line 187
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_NORMALIZED_NUMBER:Landroid/net/Uri;

    .line 186
    return-void
.end method
