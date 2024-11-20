.class public final enum Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
.super Ljava/lang/Enum;
.source "LeafNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/LeafNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LeafType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/snapshot/LeafNode$LeafType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

.field public static final enum Boolean:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

.field public static final enum DeferredValue:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

.field public static final enum Number:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

.field public static final enum String:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    const-string v1, "DeferredValue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->DeferredValue:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    .line 31
    new-instance v1, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    const-string v2, "Boolean"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Boolean:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    .line 32
    new-instance v2, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    const-string v3, "Number"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Number:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    .line 33
    new-instance v3, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    const-string v4, "String"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->String:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    .line 28
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->$VALUES:[Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->$VALUES:[Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    invoke-virtual {v0}, [Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method
