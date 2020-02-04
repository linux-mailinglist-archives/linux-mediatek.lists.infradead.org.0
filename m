Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DD9151792
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Feb 2020 10:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YRnEmYX8DBjNkB5FrjlHwTbUgOjSgNpHrynHgHf/9sA=; b=d2zYoV3eitbN/C
	U2ZvJdNjWFmXsv3qRK+QgqFSxnyoWbSaYEHY08PsHs9Jzl0dcPUwvl3ZPf5Ngi2EJ0UhSIghfaZtc
	zr+UOdyr8qjKEUXBm9wJLIz1XeU1zybNWGJe8MvNc5YPyM6NTFVQjDn0jM+W5py0Qclc63Zohuj+5
	6BsVNwF3shDJ/FQ3EtNCSHMCIDV23JQ1mVvV2FxDgmDmg5YvOkb3Mh5vNAlOSEiQHPnBvA5BPJrYf
	0PPbw7mqumEX0ErUQiQqmT0J2c8G58znGdrCii7gKLk3yC9FfUBoDp65m//+Yb7WF2/do+sZwUYTB
	IbNIZRHEyNDnv7nQQZOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuIy-0005n1-S0; Tue, 04 Feb 2020 09:15:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuIw-0005mY-8A
 for linux-mediatek@lists.infradead.org; Tue, 04 Feb 2020 09:15:35 +0000
X-UUID: 1a0f12b207764e95bbc1daeca1c04adc-20200204
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=fQaXdeVDrEL7G0OipbsvUZ4eyfT2E7gO3ttXrpO3g5M=; 
 b=ZbUNAVMKpShRXgd1DB04GDSBN0perqckMQS3VOq2yExytRJZxTMrfmoxjufegpQxUiinUdLV0AW4f2xt3BlQhvPiRZiF7omV0rUfiKwSCPme7F2eDXhSAiG3tXSsTJgtPB//GezGt8+niPCD9TV2vax9dE01+crllpu1udejkhk=;
X-UUID: 1a0f12b207764e95bbc1daeca1c04adc-20200204
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 771297515; Tue, 04 Feb 2020 01:15:20 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Feb 2020 01:15:17 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Feb 2020 17:14:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Feb 2020 17:12:46 +0800
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Todd Kjos
 <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>, Joel Fernandes
 <joel@joelfernandes.org>, Christian Brauner <christian@brauner.io>
Subject: [PATCH v1] binder: transaction latency tracking for user build
Date: Tue, 4 Feb 2020 17:15:14 +0800
Message-ID: <1580807715-26609-1-git-send-email-Frankie.Chang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 888C6AE8C31F60CE5AC86D6652174CD78C707B853BA9C90257CA6842ED7EF1AE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_011534_296298_71C390AF 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jian-Min.Liu@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Record start/end timestamp to binder transaction.
When transaction is completed or transaction is free,
it would be checked if transaction latency over threshold (2 sec),
if yes, printing related information for tracing.


Frankie Chang (1):
  binder: transaction latency tracking for user build

 drivers/android/Kconfig           |    8 +++
 drivers/android/binder.c          |  107 +++++++++++++++++++++++++++++++++++++
 drivers/android/binder_internal.h |    4 ++
 3 files changed, 119 insertions(+)
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
