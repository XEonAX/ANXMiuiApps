.class public Lmiui/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private xa:Lmiui/widget/DateTimePicker;

.field private xb:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;)V
    .locals 1

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lmiui/app/DateTimePickerDialog;->xb:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    .line 36
    invoke-direct {p0, p3}, Lmiui/app/DateTimePickerDialog;->init(I)V

    .line 37
    sget p1, Lcom/miui/internal/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Lmiui/app/DateTimePickerDialog;->setTitle(I)V

    .line 38
    return-void
.end method

.method static synthetic a(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->xb:Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    return-object p0
.end method

.method static synthetic b(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;
    .locals 0

    .line 19
    iget-object p0, p0, Lmiui/app/DateTimePickerDialog;->xa:Lmiui/widget/DateTimePicker;

    return-object p0
.end method

.method private init(I)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lmiui/app/DateTimePickerDialog$1;

    invoke-direct {v1, p0}, Lmiui/app/DateTimePickerDialog$1;-><init>(Lmiui/app/DateTimePickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v0, v2}, Lmiui/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 55
    sget v2, Lcom/miui/internal/R$layout;->datetime_picker_dialog:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lmiui/app/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 58
    sget v1, Lcom/miui/internal/R$id;->dateTimePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DateTimePicker;

    iput-object v0, p0, Lmiui/app/DateTimePickerDialog;->xa:Lmiui/widget/DateTimePicker;

    .line 59
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->xa:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1}, Lmiui/widget/DateTimePicker;->setMinuteInterval(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 1

    .line 83
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->xa:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMaxDateTime(J)V

    .line 84
    return-void
.end method

.method public setMinDateTime(J)V
    .locals 1

    .line 75
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->xa:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->setMinDateTime(J)V

    .line 76
    return-void
.end method

.method public update(J)V
    .locals 1

    .line 67
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->xa:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/DateTimePicker;->update(J)V

    .line 68
    return-void
.end method
