.class Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
.super Ljava/lang/Object;
.source "CustomClassMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/util/CustomClassMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeserializeContext"
.end annotation


# instance fields
.field final documentRef:Lcom/google/firebase/firestore/DocumentReference;

.field final errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Lcom/google/firebase/firestore/DocumentReference;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;
    .param p2, "docRef"    # Lcom/google/firebase/firestore/DocumentReference;

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    iput-object p1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->errorPath:Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    .line 1173
    iput-object p2, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    .line 1174
    return-void
.end method


# virtual methods
.method newInstanceWithErrorPath(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;)Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;
    .locals 2
    .param p1, "newPath"    # Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;

    .line 1177
    new-instance v0, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;

    iget-object v1, p0, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;->documentRef:Lcom/google/firebase/firestore/DocumentReference;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper$DeserializeContext;-><init>(Lcom/google/firebase/firestore/util/CustomClassMapper$ErrorPath;Lcom/google/firebase/firestore/DocumentReference;)V

    return-object v0
.end method
