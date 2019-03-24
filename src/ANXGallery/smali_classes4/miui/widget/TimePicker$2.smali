.class Lmiui/widget/TimePicker$2;
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

    .line 109
    iput-object p1, p0, Lmiui/widget/TimePicker$2;->aaP:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 1

    .line 111
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaP:Lmiui/widget/TimePicker;

    invoke-virtual {p1}, Lmiui/widget/TimePicker;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    .line 114
    :cond_1
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaP:Lmiui/widget/TimePicker;

    iget-object p2, p0, Lmiui/widget/TimePicker$2;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p2}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lmiui/widget/TimePicker;->a(Lmiui/widget/TimePicker;Z)Z

    .line 115
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->b(Lmiui/widget/TimePicker;)V

    .line 118
    :cond_2
    iget-object p1, p0, Lmiui/widget/TimePicker$2;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->c(Lmiui/widget/TimePicker;)V

    .line 119
    return-void
.end method
