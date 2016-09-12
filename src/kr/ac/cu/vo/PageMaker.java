package kr.ac.cu.vo;

public class PageMaker {
	Integer page;
	Integer count;
	Integer start;
	Integer end;
	boolean prev;
	boolean next;
	
	  public Integer getPage() {
	        return page;
	    }

	    public void setPage(Integer page) {

	        if (page < 1) {
	            this.page = 1;
	            return;
	        }

	        this.page = page;
	    }

	public void setCount(Integer count) {

	        if (count < 1) {
	            return;
	        }

	        this.count = count;

	        System.out.println("�� �÷� ���� = "+count);

	        calcPage();
	    }

	    private void calcPage() {

	        // page������ ���� ��������ȣ
	        int tempEnd = (int)(Math.ceil(page / 10.0) * 10);
	        // ���� ��������ȣ�� �������� �� �������� ����Ѵ�.

	        System.out.println("page = " +page);
	        System.out.println("tempEnd = "+tempEnd);
	        System.out.println("this.count =" +this.count);

	        // ���� ������ ���
	        this.start = tempEnd - 9;


	        if (tempEnd * 10 > this.count) { // �������� ����� tempEndũ�Ⱑ ���� count���� �������
	            this.end = (int) Math.ceil(this.count / 10.0);
	        } else {                        
	            this.end = tempEnd;          // ���� count�� tempEnd���� �������
	        }

	        System.out.println("this.end = "+this.end);

	        this.prev = this.start != 1; 
	        this.next = this.end * 10 < this.count; 
	    }

}
