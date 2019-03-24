.class public interface abstract Lmiui/yellowpage/YellowPageContract$Search;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Search"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_UPDATE_LOCATION_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTORY:Ljava/lang/String; = "search"

.field public static final DIRECTORY_LOCATION_UPDATE:Ljava/lang/String; = "search_location_update"

.field public static final LOCAL_SEARCH:Ljava/lang/String; = "local"

.field public static final REMOTE_SEARCH:Ljava/lang/String; = "remote"

.field public static final RESULT_STATE:Ljava/lang/String; = "result_state"

.field public static final RESULT_STATE_NETWORK_ERROR:I = 0x3

.field public static final RESULT_STATE_OK_CONTINUE:I = 0x1

.field public static final RESULT_STATE_OK_FINISH:I = 0x2

.field public static final RESULT_STATE_SERVICE_ERROR:I = 0x4

.field public static final RESULT_STATE_UNDEFINED:I = 0x0

.field public static final RESULT_STATE_UNKNOWN_ERROR:I = 0x5

.field public static final RESULT_TYPE:Ljava/lang/String; = "type"

.field public static final RESULT_TYPE_SERVICE:I = 0x1

.field public static final RESULT_TYPE_YELLOW_PAGE:I = 0x0

.field public static final SUGGESTION:Ljava/lang/String; = "suggestion"

.field public static final TIPS:Ljava/lang/String; = "tips"

.field public static final UPDATE_SUFFIX:Ljava/lang/String; = "update"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 465
    const-string v0, "content://miui.yellowpage/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Search;->CONTENT_URI:Landroid/net/Uri;

    .line 466
    const-string v0, "content://miui.yellowpage/search_location_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Search;->CONTENT_UPDATE_LOCATION_URI:Landroid/net/Uri;

    return-void
.end method
