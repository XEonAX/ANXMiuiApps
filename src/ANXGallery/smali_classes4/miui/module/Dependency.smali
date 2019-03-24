.class public Lmiui/module/Dependency;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/module/Dependency$Level;
    }
.end annotation


# static fields
.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_INSTALLED:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OPTIONAL:I = 0x1


# instance fields
.field private Cm:Lmiui/module/Dependency$Level;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()Lmiui/module/Dependency$Level;
    .locals 1

    .line 39
    iget-object v0, p0, Lmiui/module/Dependency;->Cm:Lmiui/module/Dependency$Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmiui/module/Dependency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 31
    iget v0, p0, Lmiui/module/Dependency;->type:I

    return v0
.end method

.method public setLevel(Lmiui/module/Dependency$Level;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lmiui/module/Dependency;->Cm:Lmiui/module/Dependency$Level;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lmiui/module/Dependency;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lmiui/module/Dependency;->type:I

    .line 36
    return-void
.end method
