.class public final Lcom/xiaomi/stat/MiStat$Event;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/MiStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final ADD_TO_CART:Ljava/lang/String; = "add_to_cart"

.field public static final ADD_TO_FAVORITE:Ljava/lang/String; = "add_to_favorite"

.field public static final APP_OPEN:Ljava/lang/String; = "app_open"

.field public static final CLICK:Ljava/lang/String; = "click"

.field public static final DOWNLOAD_START:Ljava/lang/String; = "download_start"

.field public static final ECOMMERCE_PAY:Ljava/lang/String; = "ecommerce_pay"

.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field public static final LEVEL_UP:Ljava/lang/String; = "level_up"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final PURCHASE_REFUND:Ljava/lang/String; = "purchase_refund"

.field public static final REMOVE_FROM_CART:Ljava/lang/String; = "remove_from_cart"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SIGN_UP:Ljava/lang/String; = "sign_up"


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/MiStat;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/MiStat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/stat/MiStat;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xiaomi/stat/MiStat$Event;->a:Lcom/xiaomi/stat/MiStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
