.class Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
.super Ljava/lang/Object;
.source "CustomClassMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/CustomClassMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorPath"
.end annotation


# static fields
.field static final EMPTY:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;


# instance fields
.field private final length:I

.field private final name:Ljava/lang/String;

.field private final parent:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1133
    new-instance v0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;-><init>(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->EMPTY:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;I)V
    .locals 0
    .param p1, "parent"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "length"    # I

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    iput-object p1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->parent:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    .line 1137
    iput-object p2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->name:Ljava/lang/String;

    .line 1138
    iput p3, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->length:I

    .line 1139
    return-void
.end method


# virtual methods
.method child(Ljava/lang/String;)Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1146
    new-instance v0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    iget v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;-><init>(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Ljava/lang/String;I)V

    return-object v0
.end method

.method getLength()I
    .locals 1

    .line 1142
    iget v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1151
    iget v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->length:I

    if-nez v0, :cond_0

    .line 1152
    const-string v0, ""

    return-object v0

    .line 1153
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->name:Ljava/lang/String;

    return-object v0

    .line 1157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->parent:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
