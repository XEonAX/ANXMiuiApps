.class Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;
.super Ljava/lang/Object;
.source "StatusHandleHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->bindFixActionForStatus(ILandroid/view/View;Lcom/miui/gallery/search/StatusHandleHelper$InfoViewPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

.field final synthetic val$intentAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;->this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    iput-object p2, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;->val$intentAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;->val$intentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter$4;->this$0:Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;

    iget-object v1, v1, Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 430
    return-void
.end method
