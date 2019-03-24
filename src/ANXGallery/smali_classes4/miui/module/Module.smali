.class public Lmiui/module/Module;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_DEFAULT:I = 0x0

.field public static final CONTENT_DEX:I = 0x1

.field public static final CONTENT_LIB:I = 0x2

.field public static final CONTENT_NONE:I = 0x0

.field public static final CONTENT_RES:I = 0x4


# instance fields
.field private content:I

.field private level:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()I
    .locals 1

    .line 40
    iget v0, p0, Lmiui/module/Module;->content:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 32
    iget v0, p0, Lmiui/module/Module;->level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lmiui/module/Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)V
    .locals 0

    .line 44
    iput p1, p0, Lmiui/module/Module;->content:I

    .line 45
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 36
    iput p1, p0, Lmiui/module/Module;->level:I

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lmiui/module/Module;->name:Ljava/lang/String;

    .line 29
    return-void
.end method
