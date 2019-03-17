.class Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$2;
.super Ljava/lang/Object;
.source "FeedSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$2;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity$2;->this$0:Lcom/xiaomi/scanner/module/study/app/FeedSearchActivity;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->startZuoyebang(Landroid/content/Context;)Z

    .line 150
    return-void
.end method
