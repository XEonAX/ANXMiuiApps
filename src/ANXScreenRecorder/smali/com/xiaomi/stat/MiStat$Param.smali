.class public final Lcom/xiaomi/stat/MiStat$Param;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/MiStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Param"
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LEVEL_NAME:Ljava/lang/String; = "level_name"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final ORIGIN:Ljava/lang/String; = "origin"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final SCORE:Ljava/lang/String; = "score"

.field public static final SEARCH_TERM:Ljava/lang/String; = "search_term"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/MiStat;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/MiStat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/stat/MiStat;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/xiaomi/stat/MiStat$Param;->a:Lcom/xiaomi/stat/MiStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
