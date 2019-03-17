.class Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$1;
.super Landroid/text/style/CharacterStyle;
.source "MarkPeopleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->configLoadMoreButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment$1;->this$0:Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/people/mark/MarkPeopleDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 207
    return-void
.end method
