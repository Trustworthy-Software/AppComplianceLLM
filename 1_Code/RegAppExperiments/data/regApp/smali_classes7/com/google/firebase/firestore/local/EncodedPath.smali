.class final Lcom/google/firebase/firestore/local/EncodedPath;
.super Ljava/lang/Object;
.source "EncodedPath.java"


# static fields
.field private static final ENCODED_ESCAPE:C = '\u0011'

.field private static final ENCODED_NUL:C = '\u0010'

.field private static final ENCODED_SEPARATOR:C = '\u0001'

.field private static final ESCAPE:C = '\u0001'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v5, "Invalid path \"%s\""

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    if-ne v0, v3, :cond_2

    .line 131
    nop

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 131
    const-string v3, "Non-empty path \"%s\" had length 2"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 139
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 141
    .local v4, "lastReasonableEscapeIndex":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v5, "segmentBuilder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "start":I
    :goto_1
    if-ge v6, v0, :cond_5

    .line 147
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 148
    .local v7, "end":I
    const-string v8, "\""

    const-string v9, "Invalid encoded resource path: \""

    if-ltz v7, :cond_4

    if-gt v7, v4, :cond_4

    .line 152
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 153
    .local v10, "next":C
    sparse-switch v10, :sswitch_data_0

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :sswitch_0
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_3

    .line 170
    :sswitch_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_3

    .line 155
    :sswitch_2
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "currentPiece":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 159
    move-object v9, v8

    .local v9, "segment":Ljava/lang/String;
    goto :goto_2

    .line 161
    .end local v9    # "segment":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .restart local v9    # "segment":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    :goto_2
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    nop

    .line 183
    .end local v8    # "currentPiece":Ljava/lang/String;
    .end local v9    # "segment":Ljava/lang/String;
    :goto_3
    add-int/lit8 v6, v7, 0x2

    .line 184
    .end local v7    # "end":I
    .end local v10    # "next":C
    goto :goto_1

    .line 149
    .restart local v7    # "end":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_5
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method static decodeFieldPath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 122
    invoke-static {p0}, Lcom/google/firebase/firestore/local/EncodedPath;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/FieldPath;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    return-object v0
.end method

.method static decodeResourcePath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 118
    invoke-static {p0}, Lcom/google/firebase/firestore/local/EncodedPath;->decode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    return-object v0
.end method

.method static encode(Lcom/google/firebase/firestore/model/BasePath;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/google/firebase/firestore/model/BasePath<",
            "TB;>;>(TB;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 79
    .local p0, "path":Lcom/google/firebase/firestore/model/BasePath;, "TB;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 82
    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encodeSeparator(Ljava/lang/StringBuilder;)V

    .line 84
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encodeSegment(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/firestore/local/EncodedPath;->encodeSeparator(Ljava/lang/StringBuilder;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encodeSegment(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "segment"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 94
    .local v2, "c":C
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    goto :goto_1

    .line 96
    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    nop

    .line 92
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeSeparator(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "result"    # Ljava/lang/StringBuilder;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    return-void
.end method

.method static prefixSuccessor(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 202
    .local v1, "pos":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 205
    .local v3, "c":C
    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "successor may only operate on paths generated by encode"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v5, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    add-int/lit8 v2, v3, 0x1

    int-to-char v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
