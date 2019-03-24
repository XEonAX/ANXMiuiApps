.class Lmiui/widget/TimePicker$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/NumberPicker$OnValueChangeListener;


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

    .line 157
    iput-object p1, p0, Lmiui/widget/TimePicker$5;->aaP:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 0

    .line 159
    invoke-virtual {p1}, Lmiui/widget/NumberPicker;->requestFocus()Z

    .line 160
    iget-object p1, p0, Lmiui/widget/TimePicker$5;->aaP:Lmiui/widget/TimePicker;

    iget-object p2, p0, Lmiui/widget/TimePicker$5;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p2}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;Z)Z

    .line 161
    iget-object p1, p0, Lmiui/widget/TimePicker$5;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->b(Lmiui/widget/TimePicker;)V

    .line 162
    iget-object p1, p0, Lmiui/widget/TimePicker$5;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->c(Lmiui/widget/TimePicker;)V

    .line 163
    return-void
.end method
