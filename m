Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205D11C256
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 02:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1x7t0LvyA0vRS1I52uGgvd8YJb3GC4DodUkw+MprTI=; b=DGewg6KWFiiGzC
	SEsN6u4YWHaWBEYWgLLmvsd2/9mtAZx8UEErDWcBjLwKWazGxSAKu63v3NILha4rVTRAAzj4M5vHm
	rhT+lWLeKdyQ2q4wSnf4adox6ijqlyeh/D5VNyy1LxjBmpTxCLptafsYw3MUkZsx3NxrB+pYyxgV/
	KfvvS/grnBcytiLrAap9Cz14l0Dyu/YzjdBoO8SQgmrHy+2xOMHkXWKu0DQqiWIojOVKyAHWlrKrb
	loLITCZogHfKV3Sg/arVWBJeTLhT5nWPr3/383fEeP0tlG5RFa+JNRz54IU1QGUHZRiXMqclBa28O
	76fCrMSt9Fj4BD1YJsog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDS9-00014t-Vw; Thu, 12 Dec 2019 01:39:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDRv-0000v6-1a; Thu, 12 Dec 2019 01:39:28 +0000
X-UUID: b7bc3234d53241e88a6f9160efa978f9-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ARecqApZNNYt1nHRIt9ZYfGP9FOkfwd1O+i0oCs1XL0=; 
 b=dOmIJ0Eb/dEGSqxcnZspet2VG4fdzQysCRKzSETcg2EwiVcb/Lk8bOWU1Adjfrt7iHbgy9IysBD9rWpJME5N4O7OG5kkXloAE6rI2Xmt07Pe1U3xycCOXVTH0zzJQcPzUXKWEHKkA9jh40jkiTB7WnJOOutEYhP9axrrzE3bGxg=;
X-UUID: b7bc3234d53241e88a6f9160efa978f9-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1994948118; Wed, 11 Dec 2019 17:39:22 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:34:54 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:33:26 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:33:41 +0800
Message-ID: <1576114425.17653.11.camel@mtkswgap22>
Subject: Re: [PATCH v2 09/14] soc: mediatek: cmdq: add read_s function
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 12 Dec 2019 09:33:45 +0800
In-Reply-To: <1575964515.13210.3.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-11-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1575964515.13210.3.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_173927_093167_09447327 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi CK,

On Tue, 2019-12-10 at 15:55 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > Add read_s function in cmdq helper functions which support read value from
> > register or dma physical address into gce internal register.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-cmdq-helper.c   | 20 ++++++++++++++++++++
> >  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
> >  include/linux/soc/mediatek/mtk-cmdq.h    | 10 ++++++++++
> >  3 files changed, 31 insertions(+)
> > 
> > diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > index 2edbc0954d97..2cd693e34980 100644
> > --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> > +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> > @@ -231,6 +231,26 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  }
> >  EXPORT_SYMBOL(cmdq_pkt_write_mask);
> >  
> > +int cmdq_pkt_read_s(struct cmdq_pkt *pkt, phys_addr_t addr, u16 reg_idx)
> > +{
> 
> Should addr be shifted in mt6779?
> 
> Regards,
> CK
> 

no, only pc and end register shift address
no need to shift in instruction


Regards,
Dennis

> > +	struct cmdq_instruction inst = { {0} };
> > +	int err;
> > +	const u16 src_reg_idx = CMDQ_SPR_TEMP;
> > +
> > +	err = cmdq_pkt_assign(pkt, src_reg_idx, CMDQ_ADDR_HIGH(addr));
> > +	if (err < 0)
> > +		return err;
> > +
> > +	inst.op = CMDQ_CODE_READ_S;
> > +	inst.dst_t = CMDQ_REG_TYPE;
> > +	inst.sop = src_reg_idx;
> > +	inst.reg_dst = reg_idx;
> > +	inst.arg_b = CMDQ_ADDR_LOW(addr);
> > +
> > +	return cmdq_pkt_append_command(pkt, inst);
> > +}
> > +EXPORT_SYMBOL(cmdq_pkt_read_s);
> > +
> >  int cmdq_pkt_write_s(struct cmdq_pkt *pkt, phys_addr_t addr, u16 reg_idx,
> >  		     u32 mask)
> >  {
> > diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > index 8ef87e1bd03b..3f6bc0dfd5da 100644
> > --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> > +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> > @@ -59,6 +59,7 @@ enum cmdq_code {
> >  	CMDQ_CODE_JUMP = 0x10,
> >  	CMDQ_CODE_WFE = 0x20,
> >  	CMDQ_CODE_EOC = 0x40,
> > +	CMDQ_CODE_READ_S = 0x80,
> >  	CMDQ_CODE_WRITE_S = 0x90,
> >  	CMDQ_CODE_WRITE_S_MASK = 0x91,
> >  	CMDQ_CODE_LOGIC = 0xa0,
> > diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> > index 56ff1970197c..bc28a41d7780 100644
> > --- a/include/linux/soc/mediatek/mtk-cmdq.h
> > +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> > @@ -106,6 +106,16 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value);
> >  int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
> >  			u16 offset, u32 value, u32 mask);
> >  
> > +/**
> > + * cmdq_pkt_read_s() - append read_s command to the CMDQ packet
> > + * @pkt:	the CMDQ packet
> > + * @addr:	the physical address of register or dma to read
> > + * @reg_idx:	the CMDQ internal register ID to cache read data
> > + *
> > + * Return: 0 for success; else the error code is returned
> > + */
> > +int cmdq_pkt_read_s(struct cmdq_pkt *pkt, phys_addr_t addr, u16 reg_idx);
> > +
> >  /**
> >   * cmdq_pkt_write_s_mask() - append write_s command to the CMDQ packet
> >   * @pkt:	the CMDQ packet
> 
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
