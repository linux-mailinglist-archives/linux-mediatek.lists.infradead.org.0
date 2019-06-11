Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F1C3C7E4
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 11:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF3vrBJvOtD+plmR3iaV4fkNxK3KkWFvdVaRnT3pMbk=; b=kq2bqIuAlNG/2/
	tpF2qFpLpvEFcAdwlirnRbGbtq/cHDjldc/4GX/94BjksxCWF+JKV7WMpO/jGMNBTdpQYKmjq0J8C
	XSxD2ksU0cbUWUqI8va3P/q4uOAhoOKbai/d3OiMIdbqKXV38y0FAxvMMGU6QRKoG3ILJcXqsEagu
	C888WBakJcwdgtpQYKgCaonsOEJxqsDvHr3M7kL8Uq+nyoR5bvR7TQFJa/cdsGQe7ylQe1dOy2WmY
	mPY7OJctrRv93aZQqKFs6CTd/iCoAo3EqxTz2H5MUwn68YrSS9nF05x5KsU3mCTudDjaj9kOoqFnA
	MovmHnRJ9GmtokGUGcZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadYA-0005xX-Dw; Tue, 11 Jun 2019 09:58:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadXQ-0005I6-1d
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 09:57:57 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B885212F5;
 Tue, 11 Jun 2019 09:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560247074;
 bh=eFCAHMLYlPjeQ8c+JvvAxqMT9R3MdGhbByLH97UfvJU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LGslM1TEI3C3raaQkUxlJCYHwCoTbTLehEc9OnKEYrHOC8KVowmCp2mVMkOFOj007
 m6vxMypK8cGrU/YDP2TGKjak2NV1pwfEwo6YjEM/BMsRKl3C1HB+6AP0ZEu6KXSsSO
 68Y3OHK2YZn1lGSmRaae9H7Igy8Rv9j4zVljsf3s=
Date: Tue, 11 Jun 2019 11:57:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Claire Chang <tientzu@chromium.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: serial: add documentation for Rx
 in-band wakeup support
Message-ID: <20190611095752.GA24058@kroah.com>
References: <20190527083150.220194-1-tientzu@chromium.org>
 <20190527083150.220194-2-tientzu@chromium.org>
 <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALiNf2_Kuu9agO31Wg2X4uUa0EHWYL=qG5RLQ=catn8M9XDKGQ@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025756_137157_AADBB0FE 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Nicolas Boichat <drinkcat@chromium.org>, changqi.hu@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 05:53:54PM +0800, Claire Chang wrote:
> (cc-ed device tree maintainers and mailing list)
> 
> The second patch in this series[1] is already in tty-next[2].
> 
> Sorry for not cc-ing device tree maintainers/mailing list at the beginning.
> I can resend this patch if needed.

Please do, as it is not here for them to review :(

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
