.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/database/sqlite/SQLiteStatement;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>([ZLandroid/database/sqlite/SQLiteStatement;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;->f$0:[Z

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;->f$1:Landroid/database/sqlite/SQLiteStatement;

    iput-wide p3, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;->f$0:[Z

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;->f$1:Landroid/database/sqlite/SQLiteStatement;

    iget-wide v2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda2;->f$2:J

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$ensureSequenceNumbers$8([ZLandroid/database/sqlite/SQLiteStatement;JLandroid/database/Cursor;)V

    return-void
.end method
