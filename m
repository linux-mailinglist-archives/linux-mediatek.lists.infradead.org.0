Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B093665DE
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jul 2019 06:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=veiN/+kFzwMCfYd4juCZJI2whZE3fyTHirY8wn/dBrE=; b=EeqJRY6xYdGOZB
	xTnSS2KF8dZXoUuoltGlJWiTY3g/0m4TmS4Ci0tH/br6hMVzDbzmR3GF0j1APXh9iGAFVE0J/MeFf
	BPutz1vRlKrlLT7N/LXu7cAg8NBSvEC5XMfS9mugh9kliet0M5XrBOz6bZtObR+zpnXfI0TechHj3
	EvW6ceq6YChQXOzI85AvWaO5l3ObmZb5MyxMgclL0r9KRe3vLVt0MDTowy2PsczT1Y07T/l/DhNgL
	8dqyG5inTy7U3i4H6heGqfbhHa9E1P4vbefu3HR/CVNkcoq4o3dchp2kSn4t99RzN/ylxZK/eXxk0
	W+iemMy3LTTkvp2D2cIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlnQr-0003lQ-11; Fri, 12 Jul 2019 04:45:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlnQA-0001z5-7P; Fri, 12 Jul 2019 04:44:35 +0000
X-UUID: 7960c32e3eaf476f8b55a90325a79c2e-20190711
X-UUID: 7960c32e3eaf476f8b55a90325a79c2e-20190711
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 646114774; Thu, 11 Jul 2019 20:44:21 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 21:44:20 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 12:44:17 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 12:44:17 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Date: Fri, 12 Jul 2019 12:44:14 +0800
Message-ID: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6CE500BED1A01CEE061009D235263B53C480307527484BCFEC3F55144357D55B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_214434_267489_FC646B4B 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Q3VycmVudGx5IGJpdHMgaW4gaGJhLT5vdXRzdGFuZGluZ190YXNrcyBhcmUgY2xlYXJlZCBvbmx5
IGFmdGVyIHRoZWlyCmNvcnJlc3BvbmRpbmcgdGFzayBtYW5hZ2VtZW50IGNvbW1hbmRzIGFyZSBz
dWNjZXNzZnVsbHkgZG9uZSBieQpfX3Vmc2hjZF9pc3N1ZV90bV9jbWQoKS4KCklmIHRpbWVvdXQg
aGFwcGVucyBpbiBhIHRhc2sgbWFuYWdlbWVudCBjb21tYW5kLCBpdHMgY29ycmVzcG9uZGluZwpi
aXQgaW4gaGJhLT5vdXRzdGFuZGluZ190YXNrcyB3aWxsIG5vdCBiZSBjbGVhcmVkIHVudGlsIG5l
eHQgdGFzawptYW5hZ2VtZW50IGNvbW1hbmQgd2l0aCB0aGUgc2FtZSB0YWcgdXNlZCBzdWNjZXNz
ZnVsbHkgZmluaXNoZXMu4oCnCgpUaGlzIGlzIHdyb25nIGFuZCBjYW4gbGVhZCB0byBzb21lIGlz
c3VlcywgbGlrZSBwb3dlciBjb25zdW1wdG9uIGlzc3VlLgpGb3IgZXhhbXBsZSwgdWZzaGNkX3Jl
bGVhc2UoKSBhbmQgdWZzaGNkX2dhdGVfd29yaygpIHdpbGwgZG8gbm90aGluZwppZiBoYmEtPm91
dHN0YW5kaW5nX3Rhc2tzIGlzIG5vdCB6ZXJvIGV2ZW4gaWYgYm90aCBVRlMgaG9zdCBhbmQgZGV2
aWNlcwphcmUgYWN0dWFsbHkgaWRsZS4KCkJlY2F1c2UgZXJyb3IgaGFuZGxpbmcgZmxvdywgaS5l
LiwgdWZzaGNkX3Jlc2V0X2FuZF9yZXN0b3JlKCksIHdpbGwgYmUKdHJpZ2dlcmVkIGFmdGVyIGFu
eSB0YXNrIG1hbmFnZW1lbnQgY29tbWFuZCB0aW1lcyBvdXQsIHdlIGZpeCB0aGlzIGJ5CmNsZWFy
aW5nIGNvcnJlc3BvbmRpbmcgaGJhLT5vdXRzdGFuZGluZ190YXNrcyBiaXRzIGR1cmluZyB0aGlz
IGZsb3cuClRvIGFjaGlldmUgdGhpcywgd2UgbmVlZCBhIG1hc2sgdG8gdHJhY2sgdGltZWQtb3V0
IGNvbW1hbmRzIGFuZCB0aHVzCmVycm9yIGhhbmRsaW5nIGZsb3cgY2FuIGNsZWFyIHRoZWlyIHRh
Z3Mgc3BlY2lmaWNhbGx5LgoKU3RhbmxleSBDaHUgKDIpOgogIHNjc2k6IHVmczogTWFrZSBuZXcg
ZnVuY3Rpb24gZm9yIGNsZWFyaW5nIG91dHN0YW5kaW5nIHRhc2sgYml0cwogIHNjc2k6IHVmczog
Rml4IGJyb2tlbiBoYmEtPm91dHN0YW5kaW5nX3Rhc2tzCgogZHJpdmVycy9zY3NpL3Vmcy91ZnNo
Y2QuYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQogZHJpdmVy
cy9zY3NpL3Vmcy91ZnNoY2QuaCB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKCi0tIAoyLjE4LjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKTGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
