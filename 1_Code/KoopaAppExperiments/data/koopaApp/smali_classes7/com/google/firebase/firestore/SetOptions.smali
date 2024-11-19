.class public final Lcom/google/firebase/firestore/SetOptions;
.super Ljava/lang/Object;
.source "SetOptions.java"


# static fields
.field private static final MERGE_ALL_FIELDS:Lcom/google/firebase/firestore/SetOptions;

.field static final OVERWRITE:Lcom/google/firebase/firestore/SetOptions;


# instance fields
.field private final fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

.field private final merge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/google/firebase/firestore/SetOptions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/SetOptions;-><init>(ZLcom/google/firebase/firestore/model/mutation/FieldMask;)V

    sput-object v0, Lcom/google/firebase/firestore/SetOptions;->OVERWRITE:Lcom/google/firebase/firestore/SetOptions;

    .line 37
    new-instance v0, Lcom/google/firebase/firestore/SetOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/SetOptions;-><init>(ZLcom/google/firebase/firestore/model/mutation/FieldMask;)V

    sput-object v0, Lcom/google/firebase/firestore/SetOptions;->MERGE_ALL_FIELDS:Lcom/google/firebase/firestore/SetOptions;

    return-void
.end method

.method private constructor <init>(ZLcom/google/firebase/firestore/model/mutation/FieldMask;)V
    .locals 3
    .param p1, "merge"    # Z
    .param p2, "fieldMask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Cannot specify a fieldMask for non-merge sets()"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-boolean p1, p0, Lcom/google/firebase/firestore/SetOptions;->merge:Z

    .line 45
    iput-object p2, p0, Lcom/google/firebase/firestore/SetOptions;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 46
    return-void
.end method

.method public static merge()Lcom/google/firebase/firestore/SetOptions;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/firebase/firestore/SetOptions;->MERGE_ALL_FIELDS:Lcom/google/firebase/firestore/SetOptions;

    return-object v0
.end method

.method public static mergeFieldPaths(Ljava/util/List;)Lcom/google/firebase/firestore/SetOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/FieldPath;",
            ">;)",
            "Lcom/google/firebase/firestore/SetOptions;"
        }
    .end annotation

    .line 124
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/FieldPath;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v0, "fieldPaths":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/FieldPath;

    .line 127
    .local v2, "field":Lcom/google/firebase/firestore/FieldPath;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "field":Lcom/google/firebase/firestore/FieldPath;
    goto :goto_0

    .line 130
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/SetOptions;

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/SetOptions;-><init>(ZLcom/google/firebase/firestore/model/mutation/FieldMask;)V

    return-object v1
.end method

.method public static mergeFields(Ljava/util/List;)Lcom/google/firebase/firestore/SetOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/firestore/SetOptions;"
        }
    .end annotation

    .line 83
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v0, "fieldPaths":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "field":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "field":Ljava/lang/String;
    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/SetOptions;

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/SetOptions;-><init>(ZLcom/google/firebase/firestore/model/mutation/FieldMask;)V

    return-object v1
.end method

.method public static varargs mergeFields([Ljava/lang/String;)Lcom/google/firebase/firestore/SetOptions;
    .locals 5
    .param p0, "fields"    # [Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v0, "fieldPaths":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 107
    .local v3, "field":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v3    # "field":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/SetOptions;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/firebase/firestore/SetOptions;-><init>(ZLcom/google/firebase/firestore/model/mutation/FieldMask;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 136
    return v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/SetOptions;

    .line 144
    .local v2, "that":Lcom/google/firebase/firestore/SetOptions;
    iget-boolean v3, p0, Lcom/google/firebase/firestore/SetOptions;->merge:Z

    iget-boolean v4, v2, Lcom/google/firebase/firestore/SetOptions;->merge:Z

    if-eq v3, v4, :cond_2

    .line 145
    return v1

    .line 147
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/SetOptions;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    if-eqz v3, :cond_3

    iget-object v0, v2, Lcom/google/firebase/firestore/SetOptions;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/google/firebase/firestore/SetOptions;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 139
    .end local v2    # "that":Lcom/google/firebase/firestore/SetOptions;
    :cond_5
    :goto_1
    return v1
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/SetOptions;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 152
    iget-boolean v0, p0, Lcom/google/firebase/firestore/SetOptions;->merge:Z

    .line 153
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/SetOptions;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 154
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method isMerge()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/google/firebase/firestore/SetOptions;->merge:Z

    return v0
.end method
