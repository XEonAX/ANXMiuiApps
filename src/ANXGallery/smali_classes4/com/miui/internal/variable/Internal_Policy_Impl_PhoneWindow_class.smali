.class public abstract Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field protected static final TARGET_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final kZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "com.android.internal.policy.PhoneWindow"

    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "com.android.internal.policy.impl.PhoneWindow"

    :goto_0
    sput-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->kZ:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->aG()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->TARGET_CLASS:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 32
    return-void
.end method

.method private static aG()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->kZ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "com.android.internal.policy.impl.PhoneWindow"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
