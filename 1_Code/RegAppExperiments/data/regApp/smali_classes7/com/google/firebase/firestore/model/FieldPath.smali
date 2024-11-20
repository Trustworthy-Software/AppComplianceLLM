.class public final Lcom/google/firebase/firestore/model/FieldPath;
.super Lcom/google/firebase/firestore/model/BasePath;
.source "FieldPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/model/BasePath<",
        "Lcom/google/firebase/firestore/model/FieldPath;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

.field public static final KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "__name__"

    invoke-static {v0}, Lcom/google/firebase/firestore/model/FieldPath;->fromSingleSegment(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    .line 25
    new-instance v0, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/firebase/firestore/model/FieldPath;->EMPTY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/BasePath;-><init>(Ljava/util/List;)V

    .line 29
    return-void
.end method

.method public static fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/firestore/model/FieldPath;"
        }
    .end annotation

    .line 38
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/model/FieldPath;->EMPTY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/FieldPath;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public static fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 56
    .local v2, "i":I
    const/4 v3, 0x0

    .line 58
    .local v3, "inBackticks":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "). Paths must not be empty, begin with \'.\', end with \'.\', or contain \'..\'"

    const-string v6, "Invalid field path ("

    if-ge v2, v4, :cond_7

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 60
    .local v4, "c":C
    const/16 v7, 0x5c

    const/4 v8, 0x1

    if-ne v4, v7, :cond_1

    .line 61
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 62
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trailing escape character is not allowed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 66
    :cond_1
    const/16 v7, 0x2e

    if-ne v4, v7, :cond_4

    .line 67
    if-nez v3, :cond_3

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "elem":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 76
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v7    # "elem":Ljava/lang/String;
    goto :goto_2

    .line 70
    .restart local v7    # "elem":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 79
    .end local v7    # "elem":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 81
    :cond_4
    const/16 v5, 0x60

    if-ne v4, v5, :cond_6

    .line 82
    if-nez v3, :cond_5

    move v5, v8

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    move v3, v5

    goto :goto_2

    .line 84
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :goto_2
    nop

    .end local v4    # "c":C
    add-int/2addr v2, v8

    .line 87
    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "lastElem":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 95
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v5, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-direct {v5, v0}, Lcom/google/firebase/firestore/model/FieldPath;-><init>(Ljava/util/List;)V

    return-object v5

    .line 90
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static fromSingleSegment(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 10
    .param p0, "identifier"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    return v1

    .line 108
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "first":C
    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    const/16 v6, 0x5f

    if-eq v0, v6, :cond_3

    if-lt v0, v5, :cond_1

    if-le v0, v3, :cond_3

    :cond_1
    if-lt v0, v4, :cond_2

    if-le v0, v2, :cond_3

    .line 110
    :cond_2
    return v1

    .line 112
    :cond_3
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 113
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 114
    .local v8, "c":C
    if-eq v8, v6, :cond_7

    if-lt v8, v5, :cond_4

    if-le v8, v3, :cond_7

    :cond_4
    if-lt v8, v4, :cond_5

    if-le v8, v2, :cond_7

    :cond_5
    const/16 v9, 0x30

    if-lt v8, v9, :cond_6

    const/16 v9, 0x39

    if-le v8, v9, :cond_7

    .line 115
    :cond_6
    return v1

    .line 112
    .end local v8    # "c":C
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 118
    .end local v7    # "i":I
    :cond_8
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public canonicalString()Ljava/lang/String;
    .locals 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/model/FieldPath;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 125
    if-lez v1, :cond_0

    .line 126
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/model/FieldPath;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "escaped":Ljava/lang/String;
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "`"

    const-string v5, "\\`"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/google/firebase/firestore/model/FieldPath;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x60

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .end local v2    # "escaped":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method bridge synthetic createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/FieldPath;->createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object p1

    return-object p1
.end method

.method createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/firestore/model/FieldPath;"
        }
    .end annotation

    .line 43
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/model/FieldPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public isKeyField()Z
    .locals 1

    .line 142
    sget-object v0, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
