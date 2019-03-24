.class Lmiui/widget/TimePicker$3;
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

    .line 130
    iput-object p1, p0, Lmiui/widget/TimePicker$3;->aaP:Lmiui/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lmiui/widget/NumberPicker;II)V
    .locals 0

    .line 132
    iget-object p1, p0, Lmiui/widget/TimePicker$3;->aaP:Lmiui/widget/TimePicker;

    invoke-static {p1}, Lmiui/widget/TimePicker;->c(Lmiui/widget/TimePicker;)V

    .line 133
    return-void
.end method
