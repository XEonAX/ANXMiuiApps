.class Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;
.super Ljava/lang/Object;
.source "ChangeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/search/transitions/ChangeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueHolder"
.end annotation


# instance fields
.field hint:Ljava/lang/String;

.field hintColor:I

.field text:Ljava/lang/String;

.field textColor:I


# direct methods
.method public constructor <init>(Landroid/transition/TransitionValues;)V
    .locals 2
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:change_text_view:text_color"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->textColor:I

    .line 156
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:change_text_view:text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->text:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:change_text_view:hint"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hint:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "customtransition:change_text_view:hint_color"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/search/transitions/ChangeTextView$ValueHolder;->hintColor:I

    .line 159
    return-void
.end method
