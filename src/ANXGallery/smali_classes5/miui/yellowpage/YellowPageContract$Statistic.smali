.class public interface abstract Lmiui/yellowpage/YellowPageContract$Statistic;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Statistic"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DIRECTORY:Ljava/lang/String; = "statistic"

.field public static final DIRECTORY_CLICK_MODULE_ITEM:Ljava/lang/String; = "click_module_item"

.field public static final DIRECTORY_CLICK_NAVIGATION_ITEM:Ljava/lang/String; = "click_navigation_item"

.field public static final DIRECTORY_CLICK_SEARCH_ITEM:Ljava/lang/String; = "click_search_item"

.field public static final DIRECTORY_CLICK_YELLOW_PAGE:Ljava/lang/String; = "click_yellowpage"

.field public static final DIRECTORY_LOG_EVENT:Ljava/lang/String; = "log_event"

.field public static final DIRECTORY_UPLOAD_DATA:Ljava/lang/String; = "upload_data"

.field public static final DIRECTORY_VIEW_NORMAL_DISPLAY:Ljava/lang/String; = "view_normal_display"

.field public static final DIRECTORY_VIEW_YELLOWPAGE:Ljava/lang/String; = "view_yellowpage"

.field public static final DIRECTORY_VIEW_YELLOWPAGE_IN_PHONE_CALL:Ljava/lang/String; = "view_yp_in_phone_call"

.field public static final ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 551
    const-string v0, "content://miui.yellowpage/statistic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
