Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFDB13B921
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 06:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znVXZR/l87u+fe6m7xxyVr427mrQ2yNFCUxRC2BRS4g=; b=n2VkSu7ivDzQXA
	nAL09Nc9uVxJ2FXtGnP2djLW6hvvaTxCuiqE9pIPzvqpe40nol3tghPtCmyAm67Bd7xADQTvYiHpn
	dVJMK8O5+XdENqeSOQ/EKwquUIvEVFjiU1PTHeGr4CqvVsE1K8IxLTbYbS3cDXyRSGmyCS+8TBpK+
	OMVYDWLAvngfsAJHaUtRYfAkGV1rUTJO+6dtgUUjVvZio5/53oO6Vs+JTk3yPNm42cVx3CtseBt+h
	IGBusZxatrRZkUs+NqWezjaCKOehS1iAwQhFUGBWhq7ruxx8Yu06zR7lFdSTeHZ7mugTtrGoCRaMM
	yiNJPTUy5HyyDVk9soIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbRd-00063n-1k; Wed, 15 Jan 2020 05:42:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbRX-0005zn-Q8; Wed, 15 Jan 2020 05:42:17 +0000
X-UUID: dd3b545507e34a21964ea9d495ccfa32-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=TZNJZ9TKA1p3YIh669Tp1TrhqTZz02HNKGVqwfnRFw4=; 
 b=iQkGiWWKXMn218uPxovDIHk9XXS7kUvH9orJArOCBaiFIBmoc7d11Ch3Yh3trJbC4wEEl+VzmW20DoHoxocblZpdmZRindgFZ7n7MgDg1QHEwSG4c+qisRl3Fw5jk60o7S+claF9n6pBn1KZvY8JRwVe2nePf8cI20RSS60il6M=;
X-UUID: dd3b545507e34a21964ea9d495ccfa32-20200114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jamesjj.liao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 907159954; Tue, 14 Jan 2020 21:42:10 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 21:32:55 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 Jan 2020 13:31:36 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 Jan 2020 13:30:13 +0800
Message-ID: <1579066321.30255.3.camel@mtksdaap41>
Subject: Re: [PATCH v2] arm64: dts: mt8183: Enable CPU idle-states
From: James Liao <jamesjj.liao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 15 Jan 2020 13:32:01 +0800
In-Reply-To: <e046d80c-07fb-7d45-309e-6f55dd8b0dc2@gmail.com>
References: <1578996673-8140-1-git-send-email-jamesjj.liao@mediatek.com>
 <e046d80c-07fb-7d45-309e-6f55dd8b0dc2@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_214215_862369_40D28499 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2020-01-14 at 12:14 +0100, Matthias Brugger wrote:
> 
> > +		idle-states {
> > +			entry-method = "arm,psci";
> 
> reading idle-states.txt the entry-method should be "psci".

It will be correct in next patch.

> > +
> > +			MCDI_CPU: mcdi-cpu {
> 
> I wonder what MCDI stands for. Normally we have CPU_SLEEP and CLUSTER_SLEEP here.

It means MCU Deep Idle. But you are right, CPU/CLUSTER_SLEEP is more
readable. So I'll change their name in next patch.


Best regards,

James

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
