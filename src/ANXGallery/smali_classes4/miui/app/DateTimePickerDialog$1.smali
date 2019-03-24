.class Lmiui/app/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/DateTimePickerDialog;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xc:Lmiui/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DateTimePickerDialog;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->xc:Lmiui/app/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 45
    iget-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->xc:Lmiui/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiui/app/DateTimePickerDialog;->a(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->xc:Lmiui/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiui/app/DateTimePickerDialog;->a(Lmiui/app/DateTimePickerDialog;)Lmiui/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    iget-object p2, p0, Lmiui/app/DateTimePickerDialog$1;->xc:Lmiui/app/DateTimePickerDialog;

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->xc:Lmiui/app/DateTimePickerDialog;

    invoke-static {v0}, Lmiui/app/DateTimePickerDialog;->b(Lmiui/app/DateTimePickerDialog;)Lmiui/widget/DateTimePicker;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lmiui/app/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiui/app/DateTimePickerDialog;J)V

    .line 48
    :cond_0
    return-void
.end method
