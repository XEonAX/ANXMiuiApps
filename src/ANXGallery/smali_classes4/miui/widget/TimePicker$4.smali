.class Lmiui/widget/TimePicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaP:Lmiui/widget/TimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/TimePicker;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lmiui/widget/TimePicker$4;->aaP:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 146
    iget-object p1, p0, Lmiui/widget/TimePicker$4;->aaP:Lmiui/widget/TimePicker;

    iget-object v0, p0, Lmiui/widget/TimePicker$4;->aaP:Lmiui/widget/TimePicker;

    invoke-static {v0}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;Z)Z

    .line 147
    iget-object p1, p0, Lmiui/widget/TimePicker$4;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->b(Lmiui/widget/TimePicker;)V

    .line 148
    iget-object p1, p0, Lmiui/widget/TimePicker$4;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->c(Lmiui/widget/TimePicker;)V

    .line 149
    return-void
.end method
