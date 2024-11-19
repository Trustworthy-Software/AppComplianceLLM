.class public final Lcom/google/firebase/firestore/FieldPath;
.super Ljava/lang/Object;
.source "FieldPath.java"


# static fields
.field private static final DOCUMENT_ID_INSTANCE:Lcom/google/firebase/firestore/FieldPath;

.field private static final RESERVED:Ljava/util/regex/Pattern;


# instance fields
.field private final internalPath:Lcom/google/firebase/firestore/model/FieldPath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "[~*/\\[\\]]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/FieldPath;->RESERVED:Ljava/util/regex/Pattern;

    .line 68
    new-instance v0, Lcom/google/firebase/firestore/FieldPath;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/FieldPath;-><init>(Lcom/google/firebase/firestore/model/FieldPath;)V

    sput-object v0, Lcom/google/firebase/firestore/FieldPath;->DOCUMENT_ID_INSTANCE:Lcom/google/firebase/firestore/FieldPath;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 0
    .param p1, "internalPath"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/firebase/firestore/model/FieldPath;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    .line 38
    return-void
.end method

.method public static documentId()Lcom/google/firebase/firestore/FieldPath;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/firebase/firestore/FieldPath;->DOCUMENT_ID_INSTANCE:Lcom/google/firebase/firestore/FieldPath;

    return-object v0
.end method

.method static fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 82
    const-string v0, "Provided field path must not be null."

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/firebase/firestore/FieldPath;->RESERVED:Ljava/util/regex/Pattern;

    .line 84
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    const-string v2, "Use FieldPath.of() for field names containing \'~*/[]\'."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :try_start_0
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/FieldPath;->of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid field path ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Paths must not be empty, begin with \'.\', end with \'.\', or contain \'..\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;
    .locals 6
    .param p0, "fieldNames"    # [Ljava/lang/String;

    .line 57
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid field path. Provided path must not be empty."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 60
    aget-object v3, p0, v0

    if-eqz v3, :cond_1

    aget-object v3, p0, v0

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid field name at argument "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Field names must not be null or empty."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/FieldPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    if-ne p0, p1, :cond_0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/FieldPath;

    .line 113
    .local v0, "fieldPath":Lcom/google/firebase/firestore/FieldPath;
    iget-object v1, p0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    iget-object v2, v0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 108
    .end local v0    # "fieldPath":Lcom/google/firebase/firestore/FieldPath;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldPath;->internalPath:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
