.class public Lcom/alibaba/fastjson/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field inputStackTop:I

.field next:Lcom/alibaba/fastjson/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/alibaba/fastjson/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 165
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    new-array v0, v1, [I

    .line 167
    .local v0, "a":[I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 170
    .end local v0    # "a":[I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p1, v1, v2

    .line 171
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p2, v1, v2

    .line 172
    return-void
.end method


# virtual methods
.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V
    .locals 1
    .param p1, "owner"    # Lcom/alibaba/fastjson/asm/MethodWriter;
    .param p2, "out"    # Lcom/alibaba/fastjson/asm/ByteVector;
    .param p3, "source"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 145
    iget v0, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/asm/Label;->addReference(II)V

    .line 146
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
    .locals 7
    .param p1, "owner"    # Lcom/alibaba/fastjson/asm/MethodWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .prologue
    .line 190
    iget v6, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    .line 191
    iput p2, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    if-ge v0, v6, :cond_0

    .line 194
    iget-object v6, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v5, v6, v0

    .line 195
    .local v5, "source":I
    iget-object v6, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v3, v6, v1

    .line 196
    .local v3, "reference":I
    sub-int v2, p2, v5

    .line 197
    .local v2, "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "reference":I
    .local v4, "reference":I
    ushr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v3

    .line 198
    int-to-byte v6, v2

    aput-byte v6, p3, v4

    goto :goto_0

    .line 201
    .end local v2    # "offset":I
    .end local v4    # "reference":I
    .end local v5    # "source":I
    :cond_0
    return-void
.end method
