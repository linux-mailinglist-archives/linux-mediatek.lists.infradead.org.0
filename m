Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B84383E50
	for <lists+linux-mediatek@lfdr.de>; Wed,  7 Aug 2019 02:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c6SyUAEomReW33k+1/gDsJWv92SkLIciBL/8O+UVSk=; b=nsCt2lcd1H6vxw
	Gc+wGwmos7+sJL35YKXnHRnMf9wCUCQRmeGq+yFW48Ioc2v323dfPWNZimYnBV5tQ82F7ECj9IA4L
	obvE3iNb9FBjDRfV6RubGE+podnhgHnN7oS2V4FoxrdD/l8n2st7j4xjRJJQPzGlC4vcUXpafpRtC
	7/XV8kP+V1fB/oj/LcODtvzko8+9DeUhwdrORCFKw4XzaBDAq8Q89gSd0+nlF49p4COOw2m5BFDzQ
	lQaEPqkHHNkLszrxGrSeFvcu2kEO1ElTluPmYd++jq4/jmJnncXcGPM9CkqqmA22LC38YgJ17hC62
	2Lw2z0jFiDAhf+BJOyng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9pm-0004AI-7k; Wed, 07 Aug 2019 00:29:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9pg-00048h-8l; Wed, 07 Aug 2019 00:29:38 +0000
X-UUID: 54410a38c15d440aaee313347710d6e8-20190806
X-UUID: 54410a38c15d440aaee313347710d6e8-20190806
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1654650332; Tue, 06 Aug 2019 16:29:24 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 17:29:23 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 08:29:21 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 7 Aug 2019 08:29:21 +0800
Message-ID: <1565137761.18034.1.camel@mtkswgap22>
Subject: Re: [PATCH] arm64: mm: print hexadecimal EC value in
 mem_abort_decode()
From: Miles Chen <miles.chen@mediatek.com>
To: Mark Rutland <mark.rutland@arm.com>
Date: Wed, 7 Aug 2019 08:29:21 +0800
In-Reply-To: <20190806123450.GE475@lakrids.cambridge.arm.com>
References: <20190806112948.4357-1-miles.chen@mediatek.com>
 <20190806123450.GE475@lakrids.cambridge.arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_172936_317702_A3EEE311 
X-CRM114-Status: GOOD (  19.07  )
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
Cc: wsd_upstream@mediatek.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-08-06 at 13:34 +0100, Mark Rutland wrote:
> On Tue, Aug 06, 2019 at 07:29:48PM +0800, Miles Chen wrote:
> > This change prints the hexadecimal EC value in mem_abort_decode(),
> > which makes it easier to lookup the corresponding EC in
> > the ARM Architecture Reference Manual.
> > 
> > The commit 1f9b8936f36f ("arm64: Decode information from ESR upon mem
> > faults") prints useful information when memory abort occurs. It would
> > be easier to lookup "0x25" instead of "DABT" in the document. Then we
> > can check the corresponding ISS.
> > 
> > For example:
> > Current	info	  	Document
> > 		  	EC	Exception class
> > "CP15 MCR/MRC"		0x3	"MCR or MRC access to CP15a..."
> > "ASIMD"			0x7	"Access to SIMD or floating-point..."
> > "DABT (current EL)" 	0x25	"Data Abort taken without..."
> > ...
> > 
> > Before:
> > Unable to handle kernel paging request at virtual address 000000000000c000
> > Mem abort info:
> >   ESR = 0x96000046
> >   Exception class = DABT (current EL), IL = 32 bits
> >   SET = 0, FnV = 0
> >   EA = 0, S1PTW = 0
> > Data abort info:
> >   ISV = 0, ISS = 0x00000046
> >   CM = 0, WnR = 1
> > 
> > After:
> > Unable to handle kernel paging request at virtual address 000000000000c000
> > Mem abort info:
> >   ESR = 0x96000046
> >   EC = 0x25, Exception class = DABT (current EL), IL = 32 bits
> >   SET = 0, FnV = 0
> >   EA = 0, S1PTW = 0
> > Data abort info:
> >   ISV = 0, ISS = 0x00000046
> >   CM = 0, WnR = 1
> > 
> > Cc: Mark Rutland <Mark.rutland@arm.com>
> > Cc: Anshuman Khandual <anshuman.khandual@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > ---
> >  arch/arm64/mm/fault.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > index cfd65b63f36f..afb6041e25e6 100644
> > --- a/arch/arm64/mm/fault.c
> > +++ b/arch/arm64/mm/fault.c
> > @@ -86,8 +86,8 @@ static void mem_abort_decode(unsigned int esr)
> >  	pr_alert("Mem abort info:\n");
> >  
> >  	pr_alert("  ESR = 0x%08x\n", esr);
> > -	pr_alert("  Exception class = %s, IL = %u bits\n",
> > -		 esr_get_class_string(esr),
> > +	pr_alert("  EC = 0x%lx, Exception class = %s, IL = %u bits\n",
> > +		 ESR_ELx_EC(esr), esr_get_class_string(esr),
> 
> Could we make this:
> 
> 	pr_alert("  EC = 0x%02lx: %s, IL = %u bits\n",
> 		 ESR_ELx_EC(esr), esr_get_class_string(esr));
> 
> We don't need to spell out "Exception Class" if we say "EC", and we
> should print the EC hex value with a consistent width as we do for the
> ISS.

Thanks for the advise.
It looks better this way. I'll send patch v2.



Miles

> 
> With that:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Thanks,
> Mark.



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
