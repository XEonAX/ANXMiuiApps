.class public Lcom/miui/gallery/util/portJava/Rectangle;
.super Lcom/miui/gallery/util/portJava/Rectangle2D;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c4f95fae535958cL


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/miui/gallery/util/portJava/Rectangle;-><init>(IIII)V

    .line 155
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;-><init>()V

    .line 180
    iput p1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    .line 181
    iput p2, p0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    .line 182
    iput p3, p0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    .line 183
    iput p4, p0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    .line 184
    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 630
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/portJava/Rectangle;->inside(II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1203
    instance-of v1, p1, Lcom/miui/gallery/util/portJava/Rectangle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1204
    check-cast v0, Lcom/miui/gallery/util/portJava/Rectangle;

    .line 1205
    .local v0, "r":Lcom/miui/gallery/util/portJava/Rectangle;
    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    iget v2, v0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    iget v2, v0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    iget v2, v0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    iget v2, v0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 1210
    .end local v0    # "r":Lcom/miui/gallery/util/portJava/Rectangle;
    :goto_0
    return v1

    .line 1205
    .restart local v0    # "r":Lcom/miui/gallery/util/portJava/Rectangle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1210
    .end local v0    # "r":Lcom/miui/gallery/util/portJava/Rectangle;
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/gallery/util/portJava/Rectangle2D;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBounds()Lcom/miui/gallery/util/portJava/Rectangle;
    .locals 5

    .prologue
    .line 279
    new-instance v0, Lcom/miui/gallery/util/portJava/Rectangle;

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    iget v2, p0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    iget v3, p0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    iget v4, p0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/portJava/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public inside(II)Z
    .locals 6
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 718
    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    .line 719
    .local v1, "w":I
    iget v0, p0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    .line 720
    .local v0, "h":I
    or-int v5, v1, v0

    if-gez v5, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v4

    .line 725
    :cond_1
    iget v2, p0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    .line 726
    .local v2, "x":I
    iget v3, p0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    .line 727
    .local v3, "y":I
    if-lt p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    .line 730
    add-int/2addr v1, v2

    .line 731
    add-int/2addr v0, v3

    .line 733
    if-lt v1, v2, :cond_2

    if-le v1, p1, :cond_0

    :cond_2
    if-lt v0, v3, :cond_3

    if-le v0, p2, :cond_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/util/portJava/Rectangle;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
