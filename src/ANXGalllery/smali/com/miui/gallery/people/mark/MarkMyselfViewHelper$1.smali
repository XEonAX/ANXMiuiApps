.class Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$1;
.super Ljava/lang/Object;
.source "MarkMyselfViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$1;->this$0:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper$1;->this$0:Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;

    invoke-static {v0}, Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;->access$000(Lcom/miui/gallery/people/mark/MarkMyselfViewHelper;)Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleSuggestionPresenter;->loadMore()V

    .line 31
    return-void
.end method
