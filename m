Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA56BD5BF9
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 09:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QACo0uCPwHJSZPUuBWcizGXNac0FCTA4tx5uWUuN/oQ=; b=QDRMuoKr6FlPQC
	tBz2cGt0/mzZCa3EmcAkuIOBSW4gNXlhD3HkkIwsE6wAWn9SZVDZsegl/S8RZK9rYcnsIkdpcin5g
	q1RxgAi8FwisXppJbyG1qySgutdY8JCBP5ylhQX6OEpmqfCdZJMxbU5wO814qI7Da5xpPmvFkTfg0
	1BGJjBAestkco1B54iYeXGjEUBPWc3s7JdpkqLBHvKFEaXg6AJsMAUTa+mlj3rrlaBU2NjMF+p+KQ
	DeETXbRBtpDDc9epgh+AsnmAWJikx3mv+VYz3Tt9wgFjWLH6SN8UX0e62pbx/XXUenH45zEsoUhes
	T//dZXrQs1FS+ifP/6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuUn-0006Hz-8B; Mon, 14 Oct 2019 07:10:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuUS-0004pE-KJ; Mon, 14 Oct 2019 07:10:01 +0000
X-UUID: 9829fff6841e45a5927572b4015d546b-20191013
X-UUID: 9829fff6841e45a5927572b4015d546b-20191013
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jing-ting.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1606026544; Sun, 13 Oct 2019 23:09:24 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 00:09:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 15:09:52 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 14 Oct 2019 15:09:53 +0800
From: Jing-Ting Wu <jing-ting.wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/1] sched/rt: avoid contend with CFS task
Date: Mon, 14 Oct 2019 15:09:07 +0800
Message-ID: <1571036948-25034-1-git-send-email-jing-ting.wu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_001000_667347_261B7133 
X-CRM114-Status: UNSURE (   3.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 wsd_upstream@mediatek.com, "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes since v2:
We have revised the implementation to select a better idle CPU
in the same sched_domain of prev_cpu (with the same cache hotness)
when the RT task wakeup.



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
