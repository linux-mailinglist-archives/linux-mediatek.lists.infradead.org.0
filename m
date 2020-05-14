Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476CB1D3679
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 18:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Reply-To:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3/WMy8Ce+lzPBadsKJBhD1Dhwslv/pCkeIMvRx8BV98=; b=W9m
	xtshjB8vbN7xX/Cq1W+7MBszmUP3V9lC0K0qF6EGRSRkgSMM0oo3Ye4IZqedguJWFlZbOJvwpxuOP
	Relgx/qd7vrC0DFDsT4c22hEAjJRxPHPdGXsn49vJikLQSiAjHgfJxIIeoysqIQw4d5D8G+tYijMg
	fHAWqaoh8aLgUfFhsurFK1tYE7eoktA4PncaR0LfPyJHkyk9sMDlTIpx0/85y8RmA9JNzNCR5Wv2J
	NyceLfNKLQTF4sHyJTFGG8HsA3b3xty1rxEcy6gUW0+61QetyZKaUz/aTA5Tta9D/mL79kFesTNXk
	HWfy0enkR2wNTCsYbtIFkci/ULnNs7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGij-00012q-K0; Thu, 14 May 2020 16:28:29 +0000
Received: from se.sendifolk.live ([45.95.171.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGid-00010d-S3
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 16:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mail; d=sendifolk.live; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date;
 i=info@sendifolk.live; bh=iDKtW5nwQUMQLdoiy13PVMOL2M4=;
 b=GiQmmWxxb1ROSjxidbOfomt+NPY8b2HUVqUCeChypG2gXpv0hSsXyCu7G/I6pgRiSwQdLB5F1uIc
 DMW7xoyOlGywm2xuInkjilof2W2h6XTfnIHAUaUYZn/GM42LqcFWwm0FhFj847bIs3McBoUQDWuI
 BHh6cApq9/XICd4t7CU=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mail; d=sendifolk.live;
 b=HGf9hlhlHwwLR1vh4j1BBYttsDmfWBLDubtxTpatTg3cKS7y8sSAK5oDJ6se03F3/BV7Dpq8C3bO
 lWSzlezYIPVfx6aZzQQQ1b6cr6wfZ5bvkmEPicnDlf+BBYtd5+ft9bh9Fw2Atvd1wY+1nBEtnX5W
 GjgYjqAnReTiDUk4ZT4=;
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello
To: linux-mediatek@lists.infradead.org
From: "Emili Berker" <info@sendifolk.live>
Date: Thu, 14 May 2020 18:07:43 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_092824_075191_E4E68D19 
X-CRM114-Status: SPAM  ( -14.44  )
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.7 UNCLAIMED_MONEY        BODY: People just leave money laying around
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 MISSING_MID            Missing Message-Id: header
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Message-ID: <E1jZGij-00012q-K0@bombadil.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

I am Mrs. Emili Berker, I'm a Cambodian American Citizen, I'm the wife of late Mr. Jon Berker, my husband worked with the Brunei Shell Petroleum Co Sdn Bhd (BSP) for twenty years and worked in Istanbul Turkey as a contractor before he died in the year 2010.

We were married for 14 years without a child. My Husband died after a brief illness that lasted for only two weeks. Since his death I decided not to re-marry or get a child outside my matrimonial home. When my late husband was alive we deposited the sum of $6,500,000 Million with a Bank in Turkey. The bank management just wrote me as the beneficiary to come forward to sign for the release of this fund or rather issue a letter of authorization to somebody to receive it on my behalf if I can not come over.

Presently, I'm in the hospital where I have been undergoing treatment for esophageal cancer. My doctor have told me that I have only a few months to live. It is my last wish to see this money distributed to charity organizations, Because my husband relatives and friends have plundered so much of my wealth since my illness, I cannot live with the agony of entrusting this huge responsibility to any of them.

Please, I'm seeking for any honest person who will get the Funds from the Bank. And  use this money to fund the poor, orphanages, widows and charity organizations. I took this decision because I don't have any child that will inherit this money and I don't want my husband's hard earned money to be misused by his greedy relatives.

Due to the state of my health. I can not communicate by phone because my illness have affected my throat. I prefer to communicate here on email. I will appreciate if you give me more light about you and your details.

I don't want a situation where this money will be used in an ungodly manner. Hence the reason for taking this bold decision. I am not afraid of death hence I know where I am going if i die. As soon as I receive your reply I shall give you the contact detail`s of my lawyer who is conversant with the unclaimed funds and my presents situation. However I shall forward to you the bank details with the letter i will give you as she will be the one to assist you in laying claims for this funds.

Above all, I wish to assure you that the funds in question is not an act of Terrorist Funding, neither Money Laundering nor
Drug-funding. Thus, the transfer will follow the normal protocol of funds transfer, backed up with its papers so that you will not encounter any difficulties or problem with your Federal Monetary Control authorities. Kindly contact me via my private email for more details. (emiliberker11@gmail.com)

Thanks,
Yours Truly,
Mrs. Emili Berker.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
