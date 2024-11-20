.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public synthetic constructor <init>([ZLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;->f$0:[Z

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;->f$1:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;->f$0:[Z

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda8;->f$1:Landroid/database/sqlite/SQLiteStatement;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$ensurePathLength$14([ZLandroid/database/sqlite/SQLiteStatement;Landroid/database/Cursor;)V

    return-void
.end method
