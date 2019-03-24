.class public Lmiui/view/inputmethod/InputMethodHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/view/inputmethod/InputMethodHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Og:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lmiui/view/inputmethod/InputMethodHelper$1;

    invoke-direct {v0}, Lmiui/view/inputmethod/InputMethodHelper$1;-><init>()V

    sput-object v0, Lmiui/view/inputmethod/InputMethodHelper;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 32
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->Og:Landroid/view/inputmethod/InputMethodManager;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/inputmethod/InputMethodHelper$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmiui/view/inputmethod/InputMethodHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/view/inputmethod/InputMethodHelper;
    .locals 1

    .line 40
    sget-object v0, Lmiui/view/inputmethod/InputMethodHelper;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/inputmethod/InputMethodHelper;

    return-object v0
.end method


# virtual methods
.method public getManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 48
    iget-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->Og:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public hideKeyBoard(Landroid/widget/EditText;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->Og:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 69
    return-void
.end method

.method public showKeyBoard(Landroid/widget/EditText;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 58
    iget-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->Og:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lmiui/view/inputmethod/InputMethodHelper;->Og:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 60
    return-void
.end method
