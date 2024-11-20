.class public final enum Lcom/google/firebase/firestore/Query$Direction;
.super Ljava/lang/Enum;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/Query$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/Query$Direction;

.field public static final enum ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

.field public static final enum DESCENDING:Lcom/google/firebase/firestore/Query$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lcom/google/firebase/firestore/Query$Direction;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/Query$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    .line 72
    new-instance v1, Lcom/google/firebase/firestore/Query$Direction;

    const-string v2, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    .line 70
    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/Query$Direction;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/Query$Direction;->$VALUES:[Lcom/google/firebase/firestore/Query$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/Query$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Lcom/google/firebase/firestore/Query$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/Query$Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/Query$Direction;
    .locals 1

    .line 70
    sget-object v0, Lcom/google/firebase/firestore/Query$Direction;->$VALUES:[Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/Query$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/Query$Direction;

    return-object v0
.end method
