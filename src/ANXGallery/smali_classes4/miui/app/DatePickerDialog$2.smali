.class Lmiui/app/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiui/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wZ:Lmiui/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DatePickerDialog;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmiui/app/DatePickerDialog$2;->wZ:Lmiui/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 97
    iget-object p1, p0, Lmiui/app/DatePickerDialog$2;->wZ:Lmiui/app/DatePickerDialog;

    invoke-static {p1}, Lmiui/app/DatePickerDialog;->b(Lmiui/app/DatePickerDialog;)V

    .line 98
    return-void
.end method
